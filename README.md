I stopped developing this library because I don't have enough expertise
to solve the problems.

The current state is unworkable. All the obvious reasons: garbage collection,
not a single thread execution -- were ruled out. There are some problems in
rendering the font for the simplest example, can be reproduced by following
the instructions in the Develop section. There are two likely problems with
the current implementation:

- The commands must be run from the literal main thread which is impossible
  to do in Pony runtime. Many graphics toolkits assume that commands are at
  least run from a single thread, many assume that from the main thread which
  is the very first thread when the program is run.
- There's some other subtle bug between the interaction of Pony with Raylib.
  Here honestly no idea what might be happening.

Current problems manifest in the following examples:

- example_core_basic_window_no_actors -- this example runs fine because it
  never yields control once it starts. This may contradict the assumption
  that the problem is because commands need to run on the main thread.
- example_core_basic_window_game_actor -- same version with an actor running
  behaviors in a loop. It runs fine except for the font rendering: rendered
  font has double spaces, which is very weird.
- example_core_basic_window_timer -- same version but using `Timers` for
  looping. Font is rendered as garbage bytes.

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
