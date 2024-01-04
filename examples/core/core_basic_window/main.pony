use "../../../raylib"
use "time"
use "debug"

actor Main
  new create(env: Env) =>
    // Going for ~0.3 ms resolution, target is 16.667 ms for 60 frames per second.
    let timers = Timers(15)
    let timer = Timer(Game(env), 0, 16_667_000)
    timers(consume timer)

  // fun @runtime_override_defaults(rto: RuntimeOptions) =>
  //   rto.ponypin = true
  //   rto.ponypinasio = true
  //   rto.ponymaxthreads = 1

class Game is TimerNotify
  let _env: Env
  let _window: Window

  new iso create(env: Env) =>
    _env = env
    _window = Window(800, 450, "raylib [core] Basic window")

  fun ref cancel(timer: Timer) =>
    _window.dispose()

  fun ref apply(timer: Timer, count: U64): Bool =>
    with dc = _window.begin_drawing() do
      dc.clear_background(Colors.ray_white())
      dc.draw_fps(10, 10)
      dc.draw_text("Congrats! You created your first window!",
        190, 200, 20, Colors.black())
    end

    not _window.should_close()
