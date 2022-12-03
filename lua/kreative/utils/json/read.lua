local _2afile_2a = "fnl/kreative/utils/json/read.fnl"
local _2amodule_name_2a = "kreative.utils.json.read"
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
local json, main = autoload("kreative.utils.json.init"), autoload("kreative.main")
do end (_2amodule_locals_2a)["json"] = json
_2amodule_locals_2a["main"] = main
local header = ((_2amodule_2a).header or string.format("%s", json.path))
do end (_2amodule_2a)["header"] = header
local function file_21(file)
  return json.decode(json["<-file"](string.format("%s/%s-%s-%s.json", json.path, main.configs.colors_name, file, main.configs.background)))
end
_2amodule_2a["file!"] = file_21
local function full_file_21(full_file)
  return json.decode(json["<-file"](string.format("%s%s", header, full_file)))
end
_2amodule_2a["full-file!"] = full_file_21
local function colors(dir)
  local file = json["<-file"](string.format("%s/%s-colors-%s.json", dir, main.configs.colors_name, main.configs.background))
  if (#file > 0) then
    return json.decode(file)
  else
    return nil
  end
end
_2amodule_2a["colors"] = colors
return _2amodule_2a