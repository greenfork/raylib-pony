use @erase_type[Pointer[None]](ptr: Any)
use "debug"

class Window
  new create(width: I32, height: I32, title: String) =>
    @InitWindow(width, height, title.cstring())

  fun ref dispose() => close()

  fun ref set_target_fps(fps: I32) => @SetTargetFPS(fps)

  fun should_close(): Bool => @WindowShouldClose()

  fun ref begin_drawing(): DrawingContext => DrawingContext

  fun ref close() => @CloseWindow()

  fun ref disable_cursor() => @DisableCursor()

  fun get_frame_time(): F32 => @GetFrameTime()

  fun is_resized(): Bool => @IsWindowResized()

  fun get_screen_width(): I32 => @GetScreenWidth()

  fun get_screen_height(): I32 => @GetScreenHeight()

class DrawingContext
  new create() => @BeginDrawing()

  fun ref dispose() => end_drawing()

  fun ref clear_background(c: Color) => @ClearBackground(@deref_color(c))

  fun ref end_drawing() => @EndDrawing()

  fun ref draw_text(text: String, pos_x: I32, pos_y: I32, font_size: I32,
    color: Color)
  =>
    @DrawText(text.cstring(), pos_x, pos_y, font_size, @deref_color(color))

  fun ref draw_fps(pos_x: I32, pos_y: I32) => @DrawFPS(pos_x, pos_y)

primitive Config
  fun set_flags(flags: ConfigFlags) =>
    @SetConfigFlags(flags.value())

primitive _Shader
struct Shader
  let id: U32
  let locs: Pointer[I32] tag

  new load(vs_file_name: (String | None), fs_file_name: (String | None)) =>
    let shader' = @LoadShader(_Pointers.string_or_null(vs_file_name),
      _Pointers.string_or_null(fs_file_name))
    let shader: Shader = @alloc_shader(shader')
    id = shader.id
    locs = shader.locs
    @free_shader(shader)

  fun ref get_location(uniform_name: String): I32 =>
    Debug("Uniform_name: " + uniform_name)
    @GetShaderLocation(@deref_shader(this), uniform_name.cstring())

  // fun ref set_value_f32(loc_index: I32, value: F32) =>
  //   var value' = value
  //   @SetShaderValue(@deref_shader(this), loc_index, addressof value',
  //     ShaderUniformFloat())

  // fun ref set_value_vector2(loc_index: I32, value: Vector2) =>
  //   var value' = (value.x, value.y)
  //   @SetShaderValue(@deref_shader(this), loc_index, addressof value',
  //     ShaderUniformVec2())

  fun ref set_value_vector3(loc_index: I32, value: Array[F32]) =>
    // let value' = value.clone()
    // use @SetShaderValue[None](shader: _Shader, locIndex: I32, value: Pointer[None] tag, uniformType: I32)
    // Debug("uniform vec 3: " + ShaderUniformVec3().string())
    @SetShaderValue(@deref_shader(this), loc_index, value.cpointer(), ShaderUniformVec3())

  // fun ref set_value_vector3(loc_index: I32, value: Vector3) =>
  //   // var value' = (value.x, value.y, value.z)
  //   // var value' = value
  //   var value': Array[F32] = [value.x; value.y; value.z]
  //   @SetShaderValue(@deref_shader(this), loc_index, value'.cpointer(),
  //     ShaderUniformVec3())

  // fun ref set_value[A: (F32 | Vector2 | Vector3)](
  //   loc_index: I32, value: A, uniform_type: ShaderUniformDataType)
  // =>
  //   var value' = value
  //   @SetShaderValue(@deref_shader(this), loc_index, addressof value',
  //     uniform_type())

  // rlSetUniform also uses ShaderUniformDataType
  // fun ref set_value2(loc_index: I32, value: Pointer[None] tag,
  //   uniform_type: ShaderUniformDataType)
  // =>
  //   var value' = (value._1, value._2)

primitive _Camera3D
struct Camera3D
  let position: Vector3
  let target: Vector3
  let up: Vector3
  let fovy: F32
  let projection: I32

  new create(position': Vector3, target': Vector3, up': Vector3, fovy': F32, projection': I32) =>
    position = position'
    target = target'
    up = up'
    fovy = fovy'
    projection = projection'

  fun ref update(camera_mode: CameraMode) => @UpdateCamera(this, camera_mode())

primitive _Camera2D
struct Camera2D
  let offset: Vector2
  let target: Vector2
  let rotation: F32
  let zoom: F32

  new create(offset': Vector2, target': Vector2, rotation': F32, zoom': F32) =>
    offset = offset'
    target = target'
    rotation = rotation'
    zoom = zoom'

primitive _Pointers
  fun string_or_null(str_or_null: (String | None)): Pointer[U8] tag =>
    match str_or_null
    | let s: String => s.cstring()
    | None => Pointer[U8]
    end
