local _2afile_2a = "fnl/kreative/utils/json/init.fnl"
local _2amodule_name_2a = "kreative.utils.json.init"
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
local main, _ = autoload("kreative.main"), nil
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["_"] = _
local std_data
local function _1_(...)
  local fpath = vim.fn.stdpath("data")
  return (fpath .. "/kat")
end
std_data = ((_2amodule_2a)["std-data"] or _1_(...))
do end (_2amodule_2a)["std-data"] = std_data
local files = ((_2amodule_2a).files or {"main", "syntax", "integrations.cmp", "integrations.coc", "integrations.fugitive", "integrations.gitsigns", "integrations.indent_blankline", "integrations.lsp", "integrations.startify", "integrations.treesitter", "integrations.ts_rainbow", "filetype.markdown", "filetype.vim", "filetype.vimwiki"})
do end (_2amodule_2a)["files"] = files
local function path()
  return (std_data .. "/kreative/json/" .. main.configs.colors_name .. "/")
end
_2amodule_2a["path"] = path
local function expand_table(tbl)
  local output = {}
  for k, value in pairs(tbl) do
    if (type(value) == "function") then
      local function _2_()
        local t_3_ = value()
        if (nil ~= t_3_) then
          t_3_ = (t_3_)[1]
        else
        end
        return t_3_
      end
      if ((type(value()) == "table") and _2_()) then
        for _0, nest in pairs(value()) do
          if (type(nest) == "function") then
            table.insert(output, nest())
          else
            table.insert(output, nest)
          end
        end
      else
        if value() then
          table.insert(output, value())
        else
        end
      end
    else
      local function _9_()
        local t_8_ = value
        if (nil ~= t_8_) then
          t_8_ = (t_8_)[1]
        else
        end
        return t_8_
      end
      if (type(_9_()) == "table") then
        for _0, nest in pairs(value) do
          table.insert(output, nest)
        end
      else
        table.insert(output, value)
      end
    end
  end
  return output
end
_2amodule_2a["expand-table"] = expand_table
local function encode(tbl)
  return vim.json.encode(expand_table(tbl))
end
_2amodule_2a["encode"] = encode
local function encode_simple(tbl)
  return vim.json.encode(tbl)
end
_2amodule_2a["encode-simple"] = encode_simple
local function decode(json)
  return vim.json.decode(json)
end
_2amodule_2a["decode"] = decode
local function __3efile_21(file, json)
  os.execute(("rm -f " .. file))
  local json_file = io.open(file, "w")
  local function close_handlers_8_auto(ok_9_auto, ...)
    json_file:close()
    if ok_9_auto then
      return ...
    else
      return error(..., 0)
    end
  end
  local function _13_()
    return json_file:write(json)
  end
  return close_handlers_8_auto(_G.xpcall(_13_, (package.loaded.fennel or debug).traceback))
end
_2amodule_2a["->file!"] = __3efile_21
local function exists_3f(file)
  local result_2_auto = vim.fn.filereadable(string.format("%s%s-%s.json", path(), file, main.configs.background))
  if (result_2_auto == 0) then
    return false
  else
    return true
  end
end
_2amodule_2a["exists?"] = exists_3f
local function _3c_file(file)
  local json_file = io.open(file, "r")
  if json_file then
    local out = json_file:read("*a")
    io.close(json_file)
    return out
  else
    return "{}"
  end
end
_2amodule_2a["<-file"] = _3c_file
local function file_parse(suffix)
  local file = string.format("kreative.highlights.%s", suffix)
  return require(file)["high-colors"]()
end
_2amodule_2a["file-parse"] = file_parse
return _2amodule_2a