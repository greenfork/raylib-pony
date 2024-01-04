default: example_shaders_raymarching

generate:
	corral run -- ponyc -d -o build generate/
	rm raylib/generated.pony src/shims.c
	./build/generate
	cat raylib/generated.pony
	cat src/shims.c

example_core_basic_window: zig-build examples/core/core_basic_window/*.pony
	corral run -- ponyc -d -o build examples/core/core_basic_window
	./build/core_basic_window

example_shaders_raymarching: zig-build examples/shaders/shaders_raymarching/*.pony
	corral run -- ponyc -d -o build examples/shaders/shaders_raymarching
	./build/shaders_raymarching

build: zig-build
	corral run -- ponyc -d -o build raylib

zig-build:
	zig build

.PHONY: default build zig-build generate
