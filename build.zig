const std = @import("std");
const builtin = @import("builtin");
const raylib = @import("raylib_src/src/build.zig");

// Although this function looks imperative, note that its job is to
// declaratively construct a build graph that will be executed by an external
// runner.
pub fn build(b: *std.Build) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard optimization options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall. Here we do not
    // set a preferred release mode, allowing the user to decide how to optimize.
    const optimize = b.standardOptimizeOption(.{});

    // Add to raylib.h: #include "../../src/raylib_allocators.h"
    const libraylib = raylib.addSharedRaylib(b, target, optimize, .{});
    addCSourceFilesVersioned(libraylib, &.{
        srcdir ++ "/src/raylib_allocators.c",
    }, &[_][]const u8{"-std=c99"});
    libraylib.addIncludePath(.{ .path = srcdir ++ "/src" });
    libraylib.addSystemIncludePath(.{ .path = srcdir ++ "/raylib_src/src" });
    libraylib.defineCMacro("RL_MALLOC(sz)", "rl_pony_malloc(sz)");
    libraylib.defineCMacro("RL_CALLOC(n,sz)", "rl_pony_calloc(n,sz)");
    libraylib.defineCMacro("RL_REALLOC(ptr,sz)", "rl_pony_realloc(ptr,sz)");
    libraylib.defineCMacro("RL_FREE(ptr)", "rl_pony_free(ptr)");

    const lib = b.addSharedLibrary(.{
        .name = "shims",
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    lib.defineCMacro("USE_LIBTYPE_SHARED", null);

    addCSourceFilesVersioned(lib, &.{
        srcdir ++ "/src/shims.c",
    }, &[_][]const u8{"-std=c99"});
    lib.addSystemIncludePath(.{ .path = srcdir ++ "/raylib_src/src" });
    lib.addSystemIncludePath(.{ .path = "/usr/local/include" });

    // This declares intent for the library to be installed into the standard
    // location when the user invokes the "install" step (the default step when
    // running `zig build`).
    b.installArtifact(lib);
    b.installArtifact(libraylib);
}

const srcdir = struct {
    fn getSrcDir() []const u8 {
        return std.fs.path.dirname(@src().file).?;
    }
}.getSrcDir();

fn addCSourceFilesVersioned(exe: *std.Build.Step.Compile, files: []const []const u8, flags: []const []const u8) void {
    if (comptime builtin.zig_version.minor >= 12) {
        exe.addCSourceFiles(.{
            .files = files,
            .flags = flags,
        });
    } else {
        exe.addCSourceFiles(files, flags);
    }
}
