use "debug"

class Window
  new create(width: I32, height: I32, title: String) =>
    @PonyInitWindow(width, height, title.cstring())

  fun ref dispose() => close()

  fun ref set_target_fps(fps: I32) => @PonySetTargetFPS(fps)

  fun should_close(): Bool => @PonyWindowShouldClose()

  fun ref begin_drawing(): DrawingContext => DrawingContext

  fun ref close() => @PonyCloseWindow()

  fun ref disable_cursor() => @PonyDisableCursor()

  fun get_frame_time(): F32 => @PonyGetFrameTime()

  fun is_resized(): Bool => @PonyIsWindowResized()

  fun get_screen_width(): I32 => @PonyGetScreenWidth()

  fun get_screen_height(): I32 => @PonyGetScreenHeight()

class DrawingContext
  new create() => @PonyBeginDrawing()

  fun ref dispose() => end_drawing()

  fun ref clear_background(c: Color) => @PonyClearBackground(c)

  fun ref end_drawing() => @PonyEndDrawing()

  fun ref draw_text(text: String, pos_x: I32, pos_y: I32, font_size: I32,
    color: Color)
  =>
    @PonyDrawText(text.cstring(), pos_x, pos_y, font_size, color)

  fun ref draw_fps(x: I32, y: I32) => @PonyDrawFPS(x, y)

  fun ref draw_rectangle(x: I32, y: I32, width: I32, height: I32, color: Color)
  =>
    @PonyDrawRectangle(x, y, width, height, color)

primitive Config
  fun set_flags(flags: ConfigFlags) =>
    @PonySetConfigFlags(flags.value())

primitive LoadShader
  fun apply(vs_file_name: (String | None), fs_file_name: (String | None)
    ): Shader
  =>
    @PonyLoadShader(_Pointers.string_or_null(vs_file_name),
      _Pointers.string_or_null(fs_file_name))

struct Shader
  let id: U32
  let locs: Pointer[I32] tag

  new create(id': U32, locs': Pointer[I32] tag) =>
    id = id'
    locs = locs'

  fun ref get_location(uniform_name: String): I32 =>
    @PonyGetShaderLocation(this, uniform_name.cstring())

  fun ref set_value(loc_index: I32,
    value: (F32 | I32 | Array[F32] | Array[I32]))
  =>
    // TODO: also add SHADER_UNIFORM_SAMPLER2D type. I don't know how it is
    // used currently.
    match value
    | let v: F32 =>
      var v' = v
      @PonySetShaderValue(this, loc_index, addressof v', ShaderUniformFloat())
    | let v: I32 =>
      var v' = v
      @PonySetShaderValue(this, loc_index, addressof v', ShaderUniformInt())
    | let v: Array[F32] if v.size() == 2 =>
      @PonySetShaderValue(this, loc_index, v.cpointer(), ShaderUniformVec2())
    | let v: Array[F32] if v.size() == 3 =>
      @PonySetShaderValue(this, loc_index, v.cpointer(), ShaderUniformVec3())
    | let v: Array[F32] if v.size() == 4 =>
      @PonySetShaderValue(this, loc_index, v.cpointer(), ShaderUniformVec4())
    | let v: Array[I32] if v.size() == 2 =>
      @PonySetShaderValue(this, loc_index, v.cpointer(), ShaderUniformIvec2())
    | let v: Array[I32] if v.size() == 3 =>
      @PonySetShaderValue(this, loc_index, v.cpointer(), ShaderUniformIvec3())
    | let v: Array[I32] if v.size() == 4 =>
      @PonySetShaderValue(this, loc_index, v.cpointer(), ShaderUniformIvec4())
    else
      Debug("No type matched for set_value")
    end

  fun ref begin_shader_mode(): ShaderModeContext => ShaderModeContext(this)

class ShaderModeContext
  new create(shader: Shader) => @PonyBeginShaderMode(shader)

  fun ref dispose() => end_shader_mode()

  fun ref end_shader_mode() => @PonyEndShaderMode()

struct Camera3D
  embed position: Vector3
  embed target: Vector3
  embed up: Vector3
  let fovy: F32
  let projection: I32

  new create(position': Vector3, target': Vector3, up': Vector3, fovy': F32,
    projection': I32)
  =>
    position = Vector3(position'.x, position'.y, position'.z)
    target = Vector3(target'.x, target'.y, target'.z)
    up = Vector3(up'.x, up'.y, up'.z)
    fovy = fovy'
    projection = projection'

  fun ref update(camera_mode: CameraMode) =>
    @PonyUpdateCamera(this, camera_mode())

struct Camera2D
  embed offset: Vector2
  embed target: Vector2
  let rotation: F32
  let zoom: F32

  new create(offset': Vector2, target': Vector2, rotation': F32, zoom': F32) =>
    offset = Vector2(offset'.x, offset'.y)
    target = Vector2(target'.x, target'.y)
    rotation = rotation'
    zoom = zoom'

primitive _Pointers
  fun string_or_null(str_or_null: (String | None)): Pointer[U8] tag =>
    match str_or_null
    | let s: String => s.cstring()
    | None => Pointer[U8]
    end

struct Vector2
  let x: F32
  let y: F32

  new create(x': F32, y': F32) =>
    x = x'
    y = y'

struct Vector3
  let x: F32
  let y: F32
  let z: F32

  new create(x': F32, y': F32, z': F32) =>
    x = x'
    y = y'
    z = z'

  fun ref array(): Array[F32] =>
    let result = Array[F32].init(0, 3)
    try
      result(0)? = x
      result(1)? = y
      result(2)? = z
    end
    result

struct Vector4
  let x: F32
  let y: F32
  let z: F32
  let w: F32

  new create(x': F32, y': F32, z': F32, w': F32) =>
    x = x'
    y = y'
    z = z'
    w = w'
