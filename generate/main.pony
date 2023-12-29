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
    try
      generator.gen_functions()?
    else
      env.err.print("Unable to generate functions")
      return
    end
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
    try
      generator.gen_aliases()?
    else
      env.err.print("Unable to generate aliases")
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

  fun ref gen_functions() ? =>
    // void*
    // deref_color(void** ptr) {
    // 	return *ptr;
    // };
    let functions = _json.data("functions")? as JsonArray
    for function' in functions.data.values() do
      let function = function' as JsonObject
      let name = function.data("name")? as String
      let return_type = function.data("returnType")? as String
      let params' =
        try
          (function.data("params")? as JsonArray).data
        else
          [as JsonType:]
        end
      let params = FunctionParams
      for param' in params'.values() do
        let param = param' as JsonObject
        let param_name = param.data("name")? as String
        let param_type = param.data("type")? as String
        params.push((param_name, param_type))
      end
    end

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
        let value_name' = Idents.whitelist(value_obj.data("name")? as String)
        let value_name = Idents.upper_to_pascal(value_name')
        let value = value_obj.data("value")? as I64
        values.push((value_name, value))
      end
      gen.generate(enum_name, values)
    end

  fun ref gen_structs() ? =>
    let gen = StructGenerator(_file, _cfile)
    gen.generate_type_stubs()
    let structs = _json.data("structs")? as JsonArray
    for struct' in structs.data.values() do
      let str = struct' as JsonObject
      let struct_name = str.data("name")? as String
      let fields' = str.data("fields")? as JsonArray
      let fields = FieldValues
      for field' in fields'.data.values() do
        let field = field' as JsonObject
        let field_name = Idents.whitelist(field.data("name")? as String)
        let c_field_type = field.data("type")? as String
        let pony_field_type = Types.c_to_pony(c_field_type)?
        fields.push((Idents.camel_to_snake(field_name), pony_field_type))
      end
      gen.generate(struct_name, fields)
    end

  fun ref gen_aliases() ? =>
    let gen = AliasGenerator(_file)
    let aliases = _json.data("aliases")? as JsonArray
    for alias' in aliases.data.values() do
      let alias = alias' as JsonObject
      let alias_name = alias.data("name")? as String
      let alias_type = alias.data("type")? as String
      gen.generate(alias_name, alias_type)
    end

type EnumValues is Array[(String val, I64)]
type FieldValues is Array[(String val, String val)]
type FunctionParams is Array[(String val, String val)]

class EnumGenerator
  let _file: File

  new create(file: File) => _file = file

  fun ref generate(enum_name: String val, values: EnumValues) =>
    if (enum_name == "ConfigFlags") or (enum_name == "Gesture") then
      for (name, value) in values.values() do
        _file.queue(
          "primitive " + name + " fun value(): U32 => " + value.string() + "\n"
        )
      end
      var first_flag = true
      _file.queue("\ntype " + enum_name + " is Flags [\n")
      for (name, _) in values.values() do
        _file.queue("  " + if first_flag then "( " else "| " end + name + "\n")
        first_flag = false
      end
      _file.queue("), U32]\n\n")
    else
      for (name, value) in values.values() do
        _file.queue(
          "primitive " + name + " fun apply(): I32 => " + value.string() + "\n"
        )
      end
      var first_flag = true
      _file.queue("\ntype " + enum_name + " is\n")
      for (name, _) in values.values() do
        _file.queue("  " + if first_flag then "( " else "| " end + name + "\n")
        first_flag = false
      end
      _file.queue(")\n\n")
    end
    _file.flush()

class StructGenerator
  let _file: File
  let _cfile: File

  new create(file: File, cfile: File) =>
    _file = file
    _cfile = cfile

  fun ref generate(struct_name: String val, fields: FieldValues) =>
    _file.queue("\nstruct " + struct_name + "\n")
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

  fun ref generate_type_stubs() =>
    _file.write("""
    primitive RAudioBuffer
    primitive RAudioProcessor
    """)

class AliasGenerator
  let _file: File

  new create(file: File) => _file = file

  fun ref generate(alias_name: String, alias_type: String) =>
    _file.write("\ntype " + alias_name + " is " + alias_type)

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

  fun camel_to_snake(string: String box): String =>
    let s: String trn = string.clone()
    var offset: ISize = 0
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

  fun whitelist(s: String box): String box =>
    match s
    | "type" => "typ"
    else s
    end

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
        let typ' = " ".join(parts.slice(0, parts.size() - 1).values())
        let typ: String val = consume typ'
        let stars = parts(parts.size() - 1)?
        // Debug("s: '" + s + "', typ: '" + typ + "', stars: '" + stars + "'")
        match stars
        | "*" => "Pointer[" + c_to_pony(typ)? + "]"
        | "**" => "Pointer[Pointer[" + c_to_pony(typ)? + "]]"
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
        "Pointer[" + c_to_pony(base_type)? + "]"
      else
        s
      end
    end

  fun _c_to_pony_hardcoded(s: String val): String val ? =>
    match s
    | "float" => "F32"
    | "int" => "I32"
    | "unsigned char" => "U8"
    | "void" => "None"
    | "unsigned int" => "U32"
    | "unsigned char *" => "String"
    | "bool" => "Bool"
    | "char" => "U8"
    | "unsigned short" => "U16"
    | "rAudioBuffer" => "RAudioBuffer"
    | "rAudioProcessor" => "RAudioProcessor"
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

  fun find_upper(s: String box, offset: USize): ISize ? =>
    if offset >= s.size() then error end
    for i in Range(offset, s.size()) do
      let c = s(i)?
      if ASCII.is_upper(c) then return i.isize() end
    end
    error
