use "../../../raylib"
use "debug"

actor Main
  new create(env: Env) =>
    Game

  fun @runtime_override_defaults(rto: RuntimeOptions) =>
    rto.ponymaxthreads = 1

actor Game
  let _window: Window

  new create() =>
    _window = Window(800, 450, "raylib [core] Basic window [game actor]")
    _window.set_target_fps(1)
    apply()

  be apply() =>
    Debug("tick")
    with dc = _window.begin_drawing() do
      dc.clear_background(Colors.ray_white())
      dc.draw_fps(10, 10)
      dc.draw_text("Congrats! You created your first window!",
        190, 200, 20, Colors.black())
    end

    if _window.should_close() then
      _window.dispose()
    else
      apply()
    end
