use "../../../raylib"
use "debug"

actor Main
  new create(env: Env) =>
    Config.set_flags(ConfigFlags.>set(FlagVsyncHint))
    with window = Window(800, 450, "raylib [shaders] Raymarching") do
      window.set_target_fps(60)
      let shader = Shader.load(None,
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
      position' = Vector3(2.5, 2.5, 3.0),
      target' = Vector3(0.0, 0.0, 0.7),
      up' = Vector3(0.0, 1.0, 0.0),
      fovy' = 65.0,
      projection' = CameraPerspective())
    _shader = shader
    _view_eye_loc = shader.get_location("viewEye")
    _view_center_loc = shader.get_location("viewCenter")
    _run_time_loc = shader.get_location("runTime")
    _resolution_loc = shader.get_location("resolution")
    Debug("view_eye_loc: " + _view_eye_loc.string() + ", view_center_loc: " +
      _view_center_loc.string() + ", run_time_loc: " + _run_time_loc.string() +
      ", resolution_loc: " + _resolution_loc.string())
    // var resolution = Vector2(F32(800), F32(450))
    // shader.set_value_vector2(_resolution_loc, resolution)

  fun ref apply() =>
    _camera.update(CameraFirstPerson)
    let delta_time = _window.get_frame_time()
    _run_time = _run_time + delta_time

    // let camera_position: Array[F32] = [
    //   _camera.position.x
    //   _camera.position.y
    //   _camera.position.z ]
    // let camera_target: Array[F32] = [
    //   _camera.target.x
    //   _camera.target.y
    //   _camera.target.z ]

    // var camera_position = Array[F32](3)
    // try
    //   camera_position(0)? = _camera.position.x
    //   camera_position(1)? = _camera.position.y
    //   camera_position(2)? = _camera.position.z
    // end

    // _shader.set_value_vector3(_view_eye_loc, camera_position)
    // _shader.set_value_vector3(_view_center_loc, camera_target)
    // _shader.set_value_vector3(_view_eye_loc, _camera.position)
    // _shader.set_value_vector3(_view_center_loc, _camera.target)
    // _shader.set_value_f32(_run_time_loc, _run_time)

    // if _window.is_resized() then
    //   var resolution =
    //     Vector2(_window.get_screen_width().f32(), _window.get_screen_height().f32())
    //   _shader.set_value_vector2(_resolution_loc, resolution)
    // end

    with dc = _window.begin_drawing() do
      dc.clear_background(Colors.ray_white())
      dc.draw_fps(10, 10)
      dc.draw_text("Congrats! You created your first window!",
        190, 200, 20, Colors.black())
    end

    if not _window.should_close() then apply() end
