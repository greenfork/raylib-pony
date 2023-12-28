generate:
	corral run -- ponyc -d -o build generate/
	./build/generate
	cat raylib/raylib.pony

example: build
	./build/raylib

build: zig-build
	ponyc -d -o build raylib/

zig-build:
	zig build

.PHONY: build example zig-build generate
