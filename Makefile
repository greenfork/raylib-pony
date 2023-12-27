example: build
	./build/raylib

build:
	zig build
	ponyc -d -o build raylib/

.PHONY: build example
