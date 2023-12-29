use "path:../zig-out/lib"
use "lib:raylibc"
use "lib:shims"

class Window
  new create(width: I32, height: I32, title: String) =>
    @InitWindow(width, height, title.cstring())

  fun ref dispose() => close()

  fun ref set_target_fps(fps: I32) => @SetTargetFPS(fps)

  fun should_close(): Bool => @WindowShouldClose()

  fun ref begin_drawing(): DrawingContext => DrawingContext

  fun ref close() => @CloseWindow()

class DrawingContext
  new create() => @BeginDrawing()

  fun ref dispose() => end_drawing()

  fun ref clear_background(c: Color) => @ClearBackground(@deref_color(c))

  fun ref end_drawing() => @EndDrawing()

  fun ref draw_text(text: String, pos_x: I32, pos_y: I32, font_size: I32,
    color: Color)
  =>
    @DrawText(text.cstring(), pos_x, pos_y, font_size, @deref_color(color))

actor Main
  new create(env: Env) =>
    let black = Color(0, 0, 0, 0xff)
    let white = Color(0xff, 0xff, 0xff, 0xff)

    with window = Window(800, 450, "raylib [core]") do
      window.set_target_fps(60)
      while not window.should_close() do
        with dc = window.begin_drawing() do
          dc.clear_background(white)
          dc.draw_text("Congrats! You created your first window!",
            190, 200, 20, black)
        end
      end
    end
