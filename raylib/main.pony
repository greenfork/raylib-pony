use "path:../zig-out/lib"
use "lib:raylibc"
use "lib:shims"

// use @InitWindow[None](w: I32, h: I32, title: Pointer[U8] tag)
// use @CloseWindow[None]()
// use @SetTargetFPS[None](fps: I32)
// use @BeginDrawing[None]()
// use @EndDrawing[None]()
// use @ClearBackground[None](color: CColor)
// use @DrawText[None](text: Pointer[U8] tag, posx: I32, posy: I32, font_size: I32, color: CColor)
// use @WindowShouldClose[Bool]()

use @deref_color[_Color](ptr: Color)

primitive _Color

struct val ColorR
  let r: U8
  let g: U8
  let b: U8
  let a: U8

  new val create(r': U8, g': U8, b': U8, a': U8) =>
    r = r'
    g = g'
    b = b'
    a = a'

actor Main
  new create(env: Env) =>
    let green = Color(0xaf, 0xaf, 0xaf, 0xff)
    let black = Color(0, 0, 0, 0xff)
    let white = Color(0xff, 0xff, 0xff, 0xff)

    @InitWindow(800, 450, "raylib [core]".cstring())
    @SetTargetFPS(60)
    while not @WindowShouldClose() do
      @BeginDrawing()
      @ClearBackground(@deref_color(green))
      @DrawText("Congrats! You created your first window!".cstring(), 190, 200,
        20, @deref_color(black))
      @EndDrawing()
    end
    @CloseWindow()
