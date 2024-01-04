use "../../../raylib"
use "debug"

actor Main
  new create(env: Env) =>
    Config.set_flags(ConfigFlags.>set(FlagVsyncHint))
    with window = Window(800, 450, "raylib [shaders] Raymarching") do
      window.disable_cursor()
      window.set_target_fps(60)
      let shader = LoadShader(None,
        "raylib_src/examples/shaders/resources/shaders/glsl330/raymarching.fs")
      let game = Game(window, shader)
      game()
    end

class Game
  let _window: Window
  let _camera: Camera
  let _shader: Shader
  let _view_eye_loc: I32
  let _view_center_loc: I32
  let _run_time_loc: I32
  let _resolution_loc: I32
  var _run_time: F32 = 0.0

  new create(window: Window, shader: Shader) =>
    _window = window
    _camera = Camera(where
      position' = V3fun(2.5, 2.5, 3.0),
      target' = V3fun(0.0, 0.0, 0.7),
      up' = V3fun(0.0, 1.0, 0.0),
      fovy' = 65.0,
      projection' = CameraPerspective())
    _shader = shader
    _view_eye_loc = shader.get_location("viewEye")
    _view_center_loc = shader.get_location("viewCenter")
    _run_time_loc = shader.get_location("runTime")
    _resolution_loc = shader.get_location("resolution")
    var resolution = V2fun(800, 450)
    shader.set_value(_resolution_loc, resolution)

  fun ref apply() =>
    _camera.update(CameraFirstPerson)
    let delta_time = _window.get_frame_time()
    _run_time = _run_time + delta_time

    _shader.set_value(_view_eye_loc, _camera.position)
    _shader.set_value(_view_center_loc, _camera.target)
    _shader.set_value(_run_time_loc, _run_time)

    if _window.is_resized() then
      var resolution = (
        _window.get_screen_width().f32(),
        _window.get_screen_height().f32() )
      _shader.set_value(_resolution_loc, resolution)
    end

    with dc = _window.begin_drawing() do
      dc.clear_background(Colors.ray_white())
      with sc = _shader.begin_shader_mode() do
        dc.draw_rectangle(0, 0, _window.get_screen_width(),
          _window.get_screen_height(), Colors.white())
      end
      dc.draw_fps(10, 10)
      dc.draw_text("(c) Raymarching shader by Iñigo Quilez. MIT License.",
        _window.get_screen_width() - 280, _window.get_screen_height() - 20,
        10, Colors.black())
    end

    if not _window.should_close() then apply() end
