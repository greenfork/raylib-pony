use "files"
use "json"
use "debug"
use "itertools"

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

    let target_file_path' = "raylib/raylib.pony"
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
    generator.gen_common()
    generator.gen_functions()
    try
      generator.gen_enums()?
    else
      env.err.print("Unable to generate enums")
      return
    end
    try
      generator.gen_structs()?
    else
      env.err.print("Unable to generate structs")
      return
    end

class Generator
  let _json: JsonObject
  let _file: File
  let _cfile: File

  new create(api: JsonDoc, target_file_path: FilePath,
    c_file_path: FilePath) ?
  =>
    _json = api.data as JsonObject
    _file = File(target_file_path)
    if not (_file.errno() is FileOK) then error end
    _cfile = File(c_file_path)
    if not (_cfile.errno() is FileOK) then _file.dispose(); error end

  fun ref gen_common() =>
    _file.write("""
    use "collections"
    """)

  fun ref gen_functions() =>
    // void*
    // deref_color(void** ptr) {
    // 	return *ptr;
    // };
    None

  fun ref gen_enums() ? =>
    let gen = EnumGenerator(_file)
    let enums = _json.data("enums")? as JsonArray
    for enum' in enums.data.values() do
      let enum = enum' as JsonObject
      let enum_name = enum.data("name")? as String
      let values' = enum.data("values")? as JsonArray
      let values = EnumValues
      for value' in values'.data.values() do
        let value_obj = value' as JsonObject
        let value_name' = value_obj.data("name")? as String
        let value_name = Idents.upper_to_pascal(value_name')
        let value = value_obj.data("value")? as I64
        values.push((value_name, value))
      end
      gen.generate(enum_name, values)
    end

  fun ref gen_structs() ? =>
    let structs = _json.data("structs")? as JsonArray
    for struct' in structs.data.values() do
      let str = struct' as JsonObject
      let struct_name = str.data("name")? as String
      let fields' = str.data("fields")? as JsonArray
      let fields = FieldValues
      for field' in fields'.data.values() do
        let field = field' as JsonObject
        let field_name = field.data("name")? as String
        let c_field_type = field.data("type")? as String
        let pony_field_type = Types.c_to_pony(c_field_type)?
        fields.push((field_name, pony_field_type))
      end
    end

type EnumValues is Array[(String val, I64)]
type FieldValues is Array[(String val, String val)]

class EnumGenerator
  let _file: File

  new create(file: File) => _file = file

  fun ref generate(enum_name: String val, values: EnumValues) =>
    if (enum_name == "ConfigFlags") or (enum_name == "Gesture") then
      for (n, v) in values.values() do
        _file.queue(
          "primitive " + n + " fun value(): U32 => " + v.string() + "\n"
        )
      end
      var first_flag = true
      _file.queue("\ntype " + enum_name + " is Flags [\n")
      for (n, v) in values.values() do
        _file.queue("  " + if first_flag then "( " else "| " end + n + "\n")
        first_flag = false
      end
      _file.queue("), U32]\n\n")
    else
      for (n, v) in values.values() do
        _file.queue(
          "primitive " + n + " fun apply(): I32 => " + v.string() + "\n"
        )
      end
      var first_flag = true
      _file.queue("\ntype " + enum_name + " is\n")
      for (n, v) in values.values() do
        _file.queue("  " + if first_flag then "( " else "| " end + n + "\n")
        first_flag = false
      end
      _file.queue(")\n\n")
    end
    _file.flush()

primitive Idents
  // MSAA_4X_HINT => Msaa4xHint
  fun upper_to_pascal(s: String box): String =>
    Iter[String](s.split("_").values())
      .map[String](Idents.word_to_pascal())
      .fold[String](String, {(acc, s) => acc + s })

  fun ascii_upper(c: U8): U8 =>
    if (c >= 0x61) and (c <= 0x7A) then c - 0x20 else c end

  fun word_to_pascal(): {(String val): String val } =>
    {(str': String val) =>
      if str' == "NPATCH" then
        "NPatch"
      else
        let str = str'.lower()
        try str(0)? = Idents.ascii_upper(str(0)?) end
        str
      end
    }

primitive Types
  fun c_to_pony(s: String val): String val ? =>
    try
      Types._c_to_pony_hardcoded(s)?
    else
      if Stringx.ends_with(s, '*') then
        // BoneInfo *
        let parts = recover ref s.split(" ") end
        if parts.size() < 2 then
          Debug("parts size is less than two for '" + s + "'")
          error
        end
        let typ' = String.join(parts.slice(0, parts.size() - 1).values())
        let typ: String val = consume typ'
        let stars = parts(parts.size() - 1)?
        // Debug("s: '" + s + "', typ: '" + typ + "', stars: '" + stars + "'")
        match stars
        | "*" => "Array[" + c_to_pony(typ)? + "]"
        | "**" => "Array[Array[ " + c_to_pony(typ)? + "]]"
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
        "Array[" + base_type + "]"
      else
        s
      end
    end

  fun _c_to_pony_hardcoded(s: String val): String val ? =>
    match s
    | "float" => "F32"
    | "int" => "I32"
    | "unsigned char" => "U8"
    | "void *" => "Pointer[None]"
    | "unsigned int" => "U32"
    | "unsigned char *" => "String"
    | "bool" => "Bool"
    | "char" => "U8"
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
      Debug("_ends_with failed")
      false
    end
