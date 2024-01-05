use "../../../raylib"
use "debug"

actor Main
  new create(env: Env) =>
    with window = Window(800, 450, "raylib [core] Basic window [no actors]") do
      window.set_target_fps(1)
      let game = Game(window)
      game()
    end

  fun @runtime_override_defaults(rto: RuntimeOptions) =>
    rto.ponymaxthreads = 1

class Game
  let _window: Window

  new create(window: Window) => _window = window

  fun ref apply() =>
    Debug("tick")
    with dc = _window.begin_drawing() do
      dc.clear_background(Colors.ray_white())
      dc.draw_fps(10, 10)
      dc.draw_text("Congrats! You created your first window!",
        190, 200, 20, Colors.black())
    end

    if not _window.should_close() then apply() end
