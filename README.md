# Raylib-Pony

[Raylib] bindings for [Pony].

[Raylib]: https://www.raylib.com/
[Pony]: https://www.ponylang.io/

## Develop

- Install Pony
- Install [corral](https://github.com/ponylang/corral)
- Install [Zig](https://ziglang.org/download/) and make it available in path,
  used for building the Raylib C library

```shell
$ git clone --recurse-submodules https://github.com/greenfork/raylib-pony.git
$ cd raylib-pony
$ corral fetch
$ make
# Press Esc to exit the window
```

### To do

- Raylib uses column-major matrices, linal only provides row-major. The
  description from raylib.h: "Matrix, 4x4 components, column major, OpenGL
  style, right-handed".
