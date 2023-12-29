default: example

generate:
	corral run -- ponyc -d -o build generate/
	rm -f raylib/raylib.pony src/shims.c
	./build/generate
	cat raylib/raylib.pony
	# cat src/shims.c

example: build
	./build/raylib

build: zig-build
	ponyc -d -o build raylib/

zig-build:
	zig build

.PHONY: default build example zig-build generate
