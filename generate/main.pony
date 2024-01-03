use "files"
use "json"
use "debug"
use "itertools"
use "collections"

actor Main
  new create(env: Env) =>
    let api_file_path' = "raylib_src/parser/output/raylib_api.json"
    let api_file_path = FilePath(FileAuth(env.root), api_file_path')
    let file =
      match OpenFile(api_file_path)
      | let f: File => f
      else
        env.err.print("Unable to open a JSON API file '" + api_file_path' + "'")
        return
      end

    let api_string = file.read_string(file.size())
    let api =
      try
        recover JsonDoc .> parse(consume api_string)? end
      else
        env.err.print("Unable to parse the JSON API file")
        return
      end

    let target_file_path' = "raylib/generated.pony"
    let target_file_path = FilePath(FileAuth(env.root), target_file_path')
    let c_file_path' = "src/shims.c"
    let c_file_path = FilePath(FileAuth(env.root), c_file_path')

    let generator =
      try
        Generator(consume api, target_file_path, c_file_path)?
      else
        env.err.print("Unable to initialize the generator")
        return
      end
    let function_generator =
      try
        generator.gen_functions()?
      else
        env.err.print("Unable to initialize function generator")
        return
      end
    let enum_generator =
      try
        generator.gen_enums()?
      else
        env.err.print("Unable to initialize enum generator")
        return
      end
    let struct_generator =
      try
        generator.gen_structs()?
      else
        env.err.print("Unable to initialize struct generator")
        return
      end
    let alias_generator =
      try
        generator.gen_aliases()?
      else
        env.err.print("Unable to initialize alias generator")
        return
      end
    let color_generator =
      try
        generator.gen_colors()?
      else
        env.err.print("Unable to initialize color generator")
        return
      end

    generator.gen_common()
    function_generator.generate_use_statements()

    enum_generator.generate()
    struct_generator.generate_statements()
    struct_generator.generate_type_stubs()
    alias_generator.generate_statements()
    color_generator.generate_statements()

    function_generator.generate_c()

class Generator
  let _json: JsonObject
  let _file: File
  let _cfile: File
  let _struct_names: Set[String] = Set[String]
  // Parameter names that tell us the value is an array and not a pointer.
  let _array_parameter_names: Set[String] = Set[String]

  new create(api: JsonDoc, target_file_path: FilePath,
    c_file_path: FilePath) ?
  =>
    _json = api.data as JsonObject
    _file = File(target_file_path)
    _array_parameter_names.set("points")
    _array_parameter_names.set("animations")
    _array_parameter_names.set("glyphRecs")
    _array_parameter_names.set("images")

    let structs = _json.data("structs")? as JsonArray
    for struct' in structs.data.values() do
      let str = struct' as JsonObject
      _struct_names.set(str.data("name")? as String)
    end
    let aliases = _json.data("aliases")? as JsonArray
    for alias' in aliases.data.values() do
      let alias = alias' as JsonObject
      _struct_names.set(alias.data("name")? as String)
    end

    if not (_file.errno() is FileOK) then error end
    _cfile = File(c_file_path)
    if not (_cfile.errno() is FileOK) then _file.dispose(); error end

  fun ref gen_common() =>
    _file.write("""
    use "path:../zig-out/lib"
    use "lib:raylib"
    use "lib:shims"
    use "collections"

    """)
    _cfile.write("""
    #include <raylib.h>
    #include <stdlib.h>
    #include <pony.h>

    """)

  fun ref gen_functions(): FunctionGenerator ? =>
    let gen = FunctionGenerator(_file, _cfile, _struct_names)
    let functions = _json.data("functions")? as JsonArray
    for function' in functions.data.values() do
      let function = function' as JsonObject
      let name = function.data("name")? as String
      let c_return_type = function.data("returnType")? as String
      let return_type = Types.c_to_pony(c_return_type, _struct_names)?
      let params' =
        try
          (function.data("params")? as JsonArray).data
        else
          [as JsonType:]
        end
      let params = Array[FunctionParam]
      for param' in params'.values() do
        let param = param' as JsonObject
        let param_name = param.data("name")? as String
        let c_param_type = param.data("type")? as String
        let param_type = Types.c_to_pony(c_param_type, _struct_names,
          _array_parameter_names.contains(param_name))?
        params.push(
          (Idents.whitelist(param_name), param_name, param_type, c_param_type))
      end
      gen.add((name, return_type, c_return_type, params))
    end
    gen

  fun ref gen_enums(): EnumGenerator ? =>
    let gen = EnumGenerator(_file)
    let enums = _json.data("enums")? as JsonArray
    for enum' in enums.data.values() do
      let enum = enum' as JsonObject
      let name = enum.data("name")? as String
      let values' = enum.data("values")? as JsonArray
      let values = Array[EnumValue]
      for value' in values'.data.values() do
        let value_obj = value' as JsonObject
        let value_name' = Idents.whitelist(value_obj.data("name")? as String)
        let value_name = Idents.upper_to_pascal(value_name')
        let value = value_obj.data("value")? as I64
        values.push((value_name, value))
      end
      gen.add((name, values))
    end
    gen

  fun ref gen_structs(): StructGenerator ? =>
    let gen = StructGenerator(_file)
    let structs = _json.data("structs")? as JsonArray
    for struct' in structs.data.values() do
      let str = struct' as JsonObject
      let name = str.data("name")? as String
      let fields' = str.data("fields")? as JsonArray
      let fields = Array[StructField]
      for field' in fields'.data.values() do
        let field = field' as JsonObject
        let field_name = Idents.whitelist(field.data("name")? as String)
        let c_field_type = field.data("type")? as String
        // We don't supply here _struct_names because there are too many
        // ambiguities regarding pointer vs array type.
        let pony_field_type = Types.c_to_pony(c_field_type, Set[String])?
        fields.push((Idents.camel_to_snake(field_name), pony_field_type))
      end
      gen.add((name, fields))
    end
    gen

  fun ref gen_aliases(): AliasGenerator ? =>
    let gen = AliasGenerator(_file)
    let aliases = _json.data("aliases")? as JsonArray
    for alias' in aliases.data.values() do
      let alias = alias' as JsonObject
      let name = alias.data("name")? as String
      let type' = alias.data("type")? as String
      gen.add((name, type'))
    end
    gen

  fun ref gen_colors(): ColorGenerator ? =>
    let gen = ColorGenerator(_file)
    let defines = _json.data("defines")? as JsonArray
    for define' in defines.data.values() do
      let define = define' as JsonObject
      if (define.data("type")? as String) != "COLOR" then continue end
      let name = Idents.color_to_pony(define.data("name")? as String)
      let value = define.data("value")? as String
      gen.add((name, value))
    end
    gen

// name, c_name, type, c_type
type FunctionParam is (String val, String val, String val, String val)
// name, return_type, c_return_type, params
type FunctionDesc is (String val, String val, String val, Array[FunctionParam])
class FunctionGenerator
  let _file: File
  let _cfile: File
  let _functions: Array[FunctionDesc] = Array[FunctionDesc]
  let _struct_names: Set[String]
  // Function names that have variadic arguments and hence should be skipped
  // because it is not possible to pass variadic arguments to another function.
  let _variadic_function_names: Set[String] = Set[String]
  // Functions names that return an array pointer as their result.
  let _array_returning_function_names: Set[String] = Set[String]

  new create(file: File, cfile: File, struct_names: Set[String]) =>
    _file = file
    _cfile = cfile
    _struct_names = struct_names
    _variadic_function_names.set("TraceLog")
    _variadic_function_names.set("TextFormat")
    _array_returning_function_names.set("LoadImageColors")
    _array_returning_function_names.set("LoadImagePalette")
    _array_returning_function_names.set("LoadMaterials")
    _array_returning_function_names.set("LoadModelAnimations")
    _array_returning_function_names.set("LoadFontData")

  fun ref add(desc: FunctionDesc) => _functions.push(desc)

  fun ref generate_use_statements() =>
    for (name, return_type, c_return_type, params) in _functions.values() do
      let function_name =
        if _variadic_function_names.contains(name) or
           _array_returning_function_names.contains(name)
        then
          name
        else
          "Pony" + name
        end
      _file.queue("use @" + function_name + "[" + return_type + "](")
      var first_param = true
      for (n, c_n, type', c_type) in params.values() do
        if first_param then
          first_param = false
        else
          _file.queue(", ")
        end
        if type' == "..." then
          _file.queue("...")
        else
          _file.queue(n + ": " + type')
        end
      end
      _file.queue(")\n")
      _file.flush()
    end

  fun ref generate_c() =>
    // Example names:
    // - name :: LoadShader
    // - return_type :: Shader
    // - ptr_return_type :: Shader*
    for (name, return_type, c_return_type, params) in _functions.values() do
      if name == "UnloadAutomationEventList" then
        // HACK: parsed api.json is not like in header. Fix in future
        // versions when Raylib synchronizes raylib.h with api.json.
        _cfile.write("""
          void PonyUnloadAutomationEventList(AutomationEventList * list) {
          	UnloadAutomationEventList(*list);
          }
        """)
        continue
      end


      if _variadic_function_names.contains(name) or
         _array_returning_function_names.contains(name)
      then
        continue
      end

      let ptr_return_type: String val =
        Types.add_asterisk_after(c_return_type, _struct_names)
      let return_name: String val = "result"
      let ptr_return_name: String val = "result_ptr"

      // First line: Pony function declaration
      _cfile.queue(ptr_return_type + " Pony" + name + "(")
      var first_param = true
      for (n, c_n, type', c_type) in params.values() do
        if first_param then
          first_param = false
        else
          _cfile.queue(", ")
        end
        _cfile.queue(Types.add_asterisk_after(c_type, _struct_names)
          + " " + c_n)
      end

      _cfile.queue(") {\n")

      // Second line: Raylib function application
      if c_return_type == "void" then
        _cfile.queue("\t" + name + "(")
      else
        _cfile.queue("\t" + c_return_type + " " + return_name + " = " + name + "(")
      end

      first_param = true
      for (n, c_n, type', c_type) in params.values() do
        if first_param then
          first_param = false
        else
          _cfile.queue(", ")
        end
        if Types.is_pointer(c_type) then
          _cfile.queue(c_n)
        else
          _cfile.queue(Types.add_asterisk_before(c_n, type', _struct_names))
        end
      end
      _cfile.queue(");\n")

      // Next lines
      if not (c_return_type == "void") then
        if not _struct_names.contains(return_type) then
          // int PonyGetShaderLocation(Shader *shader, const char *uniformName) {
          // 	return GetShaderLocation(*shader, uniformName);
          // }
          _cfile.queue("\treturn " + return_name + ";\n")
        else
          // Shader* PonyLoadShader(const char* vsFileName, const char* fsFileName) {
          // 	Shader shader = LoadShader(vsFileName, fsFileName);
          // 	pony_ctx_t* ctx = pony_ctx();
          // 	Shader* shader_ptr = (Shader*)pony_alloc(ctx, sizeof(Shader));
          // 	*shader_ptr = shader;
          // 	return shader_ptr;
          // }
          _cfile.queue("\tpony_ctx_t* ctx = pony_ctx();\n")
          _cfile.queue("\t" + ptr_return_type + " " + ptr_return_name + " = (" +
            ptr_return_type + ")pony_alloc(ctx, sizeof(" + return_type + "));\n")
          _cfile.queue("\t*" +ptr_return_name + " = " + return_name + ";\n")
          _cfile.queue("\treturn " + ptr_return_name + ";\n")
        end
      end

      _cfile.queue("}\n")
      _cfile.flush()
    end

type EnumValue is (String val, I64)
type EnumDesc is (String val, Array[EnumValue])
class EnumGenerator
  let _file: File
  let _enums: Array[EnumDesc] = Array[EnumDesc]

  new create(file: File) => _file = file

  fun ref add(desc: EnumDesc) => _enums.push(desc)

  fun ref generate() =>
    for (enum_name, values) in _enums.values() do
      if (enum_name == "ConfigFlags") or (enum_name == "Gesture") then
        for (name, value) in values.values() do
          _file.queue("primitive " + name + " fun value(): U32 => " +
            value.string() + "\n")
        end
        var first_flag = true
        _file.queue("\ntype " + enum_name + " is Flags [\n")
        for (name, _) in values.values() do
          _file.queue("  " + if first_flag then "( " else "| " end + name
            + "\n")
          first_flag = false
        end
        _file.queue("), U32]\n\n")
      else
        for (name, value) in values.values() do
          _file.queue("primitive " + name + " fun apply(): I32 => " +
            value.string() + "\n")
        end
        var first_flag = true
        _file.queue("\ntype " + enum_name + " is\n")
        for (name, _) in values.values() do
          _file.queue("  " + if first_flag then "( " else "| " end + name +
            "\n")
          first_flag = false
        end
        _file.queue(")\n\n")
      end
      _file.flush()
    end

type StructField is (String val, String val)
type StructDesc is (String val, Array[StructField])
class StructGenerator
  let _file: File
  let _structs: Array[StructDesc] = Array[StructDesc]
  let _skip_statement_generation: Set[String] = Set[String]

  new create(file: File) =>
    _file = file
    _skip_statement_generation.set("Shader")
    _skip_statement_generation.set("Camera2D")
    _skip_statement_generation.set("Camera3D")
    _skip_statement_generation.set("Vector2")
    _skip_statement_generation.set("Vector3")
    _skip_statement_generation.set("Vector4")

  fun ref add(desc: StructDesc) => _structs.push(desc)

  fun ref generate_statements() =>
    for (struct_name, fields) in _structs.values() do
      if _skip_statement_generation.contains(struct_name) then continue end

      _file.queue("struct " + struct_name + "\n")
      for (name, typ) in fields.values() do
        _file.queue("  let " + name + ": " + typ + "\n")
      end
      _file.queue("\n  new create(")
      var first_param = true
      for (name, typ) in fields.values() do
        if first_param then
          _file.queue(name + "': " + typ)
          first_param = false
        else
          _file.queue(", " + name + "': " + typ)
        end
      end
      _file.queue(") =>\n")
      for (name, typ) in fields.values() do
        _file.queue("    " + name + " = " + name + "'\n")
      end
      _file.flush()
    end

  fun ref generate_type_stubs() =>
    _file.write("""
    primitive RAudioBuffer
    primitive RAudioProcessor
    // TODO: implement callbacks
    primitive TraceLogCallback
    primitive LoadFileDataCallback
    primitive SaveFileDataCallback
    primitive LoadFileTextCallback
    primitive SaveFileTextCallback
    primitive AudioCallback
    """)

type AliasDesc is (String val, String val)
class AliasGenerator
  let _file: File
  let _aliases: Array[AliasDesc] = Array[AliasDesc]

  new create(file: File) => _file = file

  fun ref add(desc: AliasDesc) => _aliases.push(desc)

  fun ref generate_statements() =>
    for (name, type') in _aliases.values() do
      _file.queue("\ntype " + name + " is " + type')
      _file.flush()
    end

type ColorDesc is (String val, String val)
class ColorGenerator
  let _file: File
  let _colors: Array[ColorDesc] = Array[ColorDesc]

  new create(file: File) => _file = file

  fun ref add(desc: ColorDesc) => _colors.push(desc)

  fun ref generate_statements() =>
    _file.queue("\nprimitive Colors")
    for (name, value') in _colors.values() do
      // value' is similar to: CLITERAL(Color){ 0, 228, 48, 255 }
      // "CLITERAL(Color){ ".size() == 17; " }".size() == 2
      let value = value'.trim(17, value'.size() - 2)
      _file.queue("\n  fun " + name + "(): Color => Color(" + value + ")")
    end
    _file.queue("\n")
    _file.flush()

primitive ASCII
  fun upper(c: U8): U8 =>
    if (c >= 0x61) and (c <= 0x7A) then c - 0x20 else c end

  fun is_upper(c: U8): Bool => (c >= 0x41) and (c <= 0x5A)

primitive Idents
  // MSAA_4X_HINT => Msaa4xHint
  fun upper_to_pascal(s: String box): String =>
    Iter[String](s.split("_").values())
      .map[String](Idents.word_to_pascal())
      .fold[String](String, {(acc, s) => acc + s })

  fun word_to_pascal(): {(String val): String val } =>
    {(str': String val) =>
      if str' == "NPATCH" then
        "NPatch"
      else
        let str = str'.lower()
        try str(0)? = ASCII.upper(str(0)?) end
        str
      end
    }

  fun camel_to_snake(string: String val): String =>
    if string.size() <= 1 then return string end
    let s: String trn = string.clone()
    var offset: ISize = 1
    while true do
      try
        offset = Stringx.find_upper(s, offset.usize())?
        s.insert_byte(offset, '_')
        // Debug("Found upper: '" + string(offset.usize())?.string() + "' at '"
        //   + string + "[" + offset.string() + "]', final: '" + s + "'")
        offset = offset + 2
      else
        break
      end
    end
    s.lower_in_place()
    consume s

  fun whitelist(s: String val): String val =>
    match s
    | "type" => "type'"
    | "end" => "end'"
    | "box" => "box'"
    else s
    end

  fun color_to_pony(s: String val): String val =>
    match s
    | "LIGHTGRAY" => "light_gray"
    | "DARKGRAY" => "dark_gray"
    | "DARKGREEN" => "dark_green"
    | "SKYBLUE" => "sky_blue"
    | "DARKPURPLE" => "dark_purple"
    | "DARKBROWN" => "dark_brown"
    | "RAYWHITE" => "ray_white"
    else s.lower()
    end

primitive Types
  fun c_to_pony(s: String val, struct_names: Set[String], is_array: Bool = false
    ): String val ?
  =>
    try
      Types._c_to_pony_hardcoded(s)?
    else
      if Stringx.starts_with(s, "const ") then
        // "const ".size() == 6
        // c_to_pony(s.trim(6))? + " val"
        // TODO: do something with const
        c_to_pony(s.trim(6), struct_names)?
      elseif Stringx.ends_with(s, '*') then
        // BoneInfo *
        let parts = recover ref s.split(" ") end
        if parts.size() < 2 then
          Debug("Parts size is less than two for '" + s + "'")
          error
        end
        let typ' = " ".join(parts.slice(0, parts.size() - 1).values())
        let typ: String val = consume typ'
        let stars = parts(parts.size() - 1)?
        let inner_type = c_to_pony(typ, struct_names)?
        // Debug("s: '" + s + "', typ: '" + typ + "', stars: '" + stars + "', " +
        //   "inner_type: '" + inner_type + "', struct_names contains: " +
        //   struct_names.contains(inner_type).string())
        match stars
        | "*" =>
          if struct_names.contains(inner_type) and (not is_array) then
            inner_type
          else
            "Pointer[" + inner_type + "] tag"
          end
        | "**" =>
          if struct_names.contains(inner_type) and (not is_array) then
            "Pointer[" + inner_type + "] tag"
          else
            "Pointer[Pointer[" + inner_type + "] tag] tag"
          end
        else
          Debug("Ends with star but is '" + s + "'")
          error
        end
      elseif Stringx.ends_with(s, ']') then
        // char[32]
        (let base_type', let array_part') = s.clone().chop(s.find("[")?.usize())
        let base_type: String val = consume base_type'
        let array_part: String ref = consume array_part'
        array_part.trim_in_place(1, array_part.size() - 1)
        let num =
          try
            array_part.u32()?
          else
            Debug("Failed to read a number: '" + array_part + "'")
            error
          end
        "Pointer[" + c_to_pony(base_type, struct_names)? + "] tag"
      else
        s
      end
    end

  fun add_asterisk_after(type': String, struct_names: Set[String]): String =>
    if struct_names.contains(type') then type' + "*" else type' end

  fun add_asterisk_before(name: String, type': String, struct_names: Set[String]
    ): String
  =>
    if struct_names.contains(type') then "*" + name else name end

  fun is_pointer(c_type: String): Bool => Stringx.ends_with(c_type, '*')

  fun _c_to_pony_hardcoded(s: String val): String val ? =>
    match s
    | "float" => "F32"
    | "int" => "I32"
    | "unsigned char" => "U8"
    | "void" => "None"
    | "unsigned int" => "U32"
    | "bool" => "Bool"
    | "char" => "U8"
    | "unsigned short" => "U16"
    | "rAudioBuffer" => "RAudioBuffer"
    | "rAudioProcessor" => "RAudioProcessor"
    | "float*" => "Pointer[F32] tag"
    | "unsigned char" => "U8"
    | "double" => "F64"
    | "long" => "I64"
    else
      // Debug("Not hardcoded type '" + s + "'")
      error
    end

primitive Stringx
  fun ends_with(s: String box, c: U8): Bool =>
    if s.size() == 0 then return false end
    try
      s(s.size() - 1)? == c
    else
      Debug("ends_with failed")
      false
    end

  fun starts_with(s: String box, prefix: String box): Bool =>
    if prefix.size() > s.size() then return false end
    try
      for i in Range(0, prefix.size()) do
        if prefix(i)? != s(i)? then return false end
      end
      true
    else
      Debug("starts_with failed")
      false
    end

  fun find_upper(s: String box, offset: USize): ISize ? =>
    if offset >= s.size() then error end
    for i in Range(offset, s.size()) do
      let c = s(i)?
      if ASCII.is_upper(c) then return i.isize() end
    end
    error
