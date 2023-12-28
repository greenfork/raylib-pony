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
        env.err.print("Unable to open a file for writing")
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

  new create(api: JsonDoc iso, target_file_path: FilePath,
    c_file_path: FilePath) ?
  =>
    _json = (consume ref api).data as JsonObject
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
    let gen = EnumGenerator(_file, _cfile)
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

type EnumValues is Array[(String val, I64)]

class EnumGenerator
  let _file: File
  let _cfile: File

  new create(file: File, cfile: File) =>
    _file = file
    _cfile = cfile

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
