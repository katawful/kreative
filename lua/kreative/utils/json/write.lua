local _2afile_2a = "fnl/kreative/utils/json/write.fnl"
local _2amodule_name_2a = "kreative.utils.json.write"
local _2amodule_2a
do
  package.loaded[_2amodule_name_2a] = {}
  _2amodule_2a = package.loaded[_2amodule_name_2a]
end
local _2amodule_locals_2a
do
  _2amodule_2a["aniseed/locals"] = {}
  _2amodule_locals_2a = (_2amodule_2a)["aniseed/locals"]
end
local autoload = (require("kreative.aniseed.autoload")).autoload
local color_table, json, main, _ = autoload("kreative.color"), autoload("kreative.utils.json.init"), autoload("kreative.main"), nil
_2amodule_locals_2a["color-table"] = color_table
_2amodule_locals_2a["json"] = json
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["_"] = _
local function file_21(file, source_json)
  vim.fn.system(string.format("mkdir -p %s", json.path()))
  return json["->file!"](string.format("%s/%s-%s.json", json.path(), file, main.configs.background), source_json)
end
_2amodule_2a["file!"] = file_21
local function override_file_21(source_json, override, colors_name)
  vim.fn.system(string.format("mkdir -p %s", json.path()))
  vim.fn.system(string.format("mkdir -p %s", (json.path() .. override)))
  return json["->file!"](string.format("%s%s/%s-%s.json", json.path(), override, colors_name, main.configs.background), source_json)
end
_2amodule_2a["override-file!"] = override_file_21
local function colors(dir)
  local colors0 = {{"light", "soft", "kat.nwim"}, {"light", "hard", "kat.nvim"}, {"dark", "soft", "kat.nwim"}, {"dark", "hard", "kat.nvim"}}
  main.configs.background = ""
  main.configs.contrast = ""
  main.configs.colors_name = ""
  for _0, v in pairs(colors0) do
    main.configs.background = v[1]
    main.configs.contrast = v[2]
    main.configs.colors_name = v[3]
    json["->file!"](string.format("%s/colors-%s-%s.json", dir, v[3], v[1]), json["encode-simple"](color_table.output()))
  end
  main.configs.background = __fnl_global__old_2dbackground
  main.configs.contrast = __fnl_global__old_2dcontrast
  main.configs.colors_name = __fnl_global__old_2dcolors_2dname
  return nil
end
_2amodule_2a["colors"] = colors
local function colors_21()
  vim.fn.system(string.format("mkdir -p %s", json.path()))
  return json["->file!"](string.format("%s/colors-%s.json", json.path(), main.configs.background), json["encode-simple"](color_table.output()))
end
_2amodule_2a["colors!"] = colors_21
return _2amodule_2a