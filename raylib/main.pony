use "path:../zig-out/lib"
use "lib:raylib"

use @InitWindow[None](w: I32, h: I32, title: Pointer[U8] tag)
use @CloseWindow[None]()
use @SetTargetFPS[None](fps: I32)
use @BeginDrawing[None]()
use @EndDrawing[None]()
use @ClearBackground[None](color: U32)
use @DrawText[None](text: Pointer[U8] tag, posx: I32, posy: I32, font_size: I32, color: U32)
use @WindowShouldClose[Bool]()

actor Main
  new create(env: Env) =>
    @InitWindow(800, 450, "raylib [core]".cstring())
    @SetTargetFPS(60)
    while not @WindowShouldClose() do
      @BeginDrawing()
      @ClearBackground(0x000000ff)
      @DrawText("Congrats! You created your first window!".cstring(), 190, 200,
        20, 0xffffffff)
      @EndDrawing()
    end
    @CloseWindow()
