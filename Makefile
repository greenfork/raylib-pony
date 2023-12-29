default: example

generate:
	corral run -- ponyc -d -o build generate/
	rm -f raylib/raylib.pony src/shims.c
	./build/generate
	cat raylib/generated.pony
	# cat src/shims.c

example: build
	./build/basic_window

build: zig-build
	ponyc -d -o build examples/basic_window

zig-build:
	zig build

.PHONY: default build example zig-build generate
