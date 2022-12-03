local _2afile_2a = "fnl/kreative/main.fnl"
local _2amodule_name_2a = "kreative.main"
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
local colors, json, message, options, override, read, run, write, _, _0 = autoload("kreative.color"), autoload("kreative.utils.json.init"), autoload("kreative.utils.messages.init"), autoload("kreative.utils.options.init"), autoload("kreative.utils.override.init"), autoload("kreative.utils.json.read"), autoload("kreative.utils.highlight.run"), autoload("kreative.utils.json.write"), nil, nil
_2amodule_locals_2a["colors"] = colors
_2amodule_locals_2a["json"] = json
_2amodule_locals_2a["message"] = message
_2amodule_locals_2a["options"] = options
_2amodule_locals_2a["override"] = override
_2amodule_locals_2a["read"] = read
_2amodule_locals_2a["run"] = run
_2amodule_locals_2a["write"] = write
_2amodule_locals_2a["_"] = _0
_2amodule_locals_2a["_"] = _0
local function init(opts)
  local configs = options.default(opts)
  do end (_2amodule_2a)["configs"] = configs
  colors.kreative = {}
  if vim.g.colors_name then
    vim.api.nvim_exec("highlight  clear", true)
  else
  end
  if (vim.fn.exists("syntax_on") == 1) then
    vim.api.nvim_exec("syntax  reset", true)
  else
  end
  local _4_
  do
    local t_3_ = opts
    if (nil ~= t_3_) then
      t_3_ = (t_3_).contrast
    else
    end
    _4_ = t_3_
  end
  configs.contrast = assert(_4_, "Please add a contrast to your opts table")
  configs.background = vim.o.background
  local _7_
  do
    local t_6_ = opts
    if (nil ~= t_6_) then
      t_6_ = (t_6_).colors_name
    else
    end
    _7_ = t_6_
  end
  vim.g["colors_name"] = assert(_7_, "Please add a colors_name to your opts table")
  configs.colors_name = opts.colors_name
  colors.update()
  local start = vim.fn.reltime()
  do
    local rendered_length
    do
      local i = 0
      for k, _1 in pairs(override["main-files"](), "until", (i > 0)) do
        i = (i + 1)
      end
      rendered_length = i
    end
    local matcher = string.format("%s-%s.json", configs.colors_name, background)
    local integrations
    do
      local output = {}
      for _1, v in pairs(configs.integrations) do
        output[("integrations." .. v)] = true
      end
      for _1, v in pairs(configs.filetypes) do
        output[("filetype." .. v)] = true
      end
      integrations = output
    end
    if json["exists?"]("main") then
      run["highlight$<-table"](read["file!"]("main"))
    else
      do end (require("kreative.highlights.main")).init()
      write["file!"]("main", json.encode(json["file-parse"]("main")))
    end
    if json["exists?"]("syntax") then
      run["highlight$<-table"](read["file!"]("syntax"))
    else
      do end (require("kreative.highlights.syntax")).init()
      write["file!"]("syntax", json.encode(json["file-parse"]("syntax")))
    end
    if (rendered_length > 0) then
      for key, _1 in pairs(integrations) do
        if json["exists?"](key) then
          run["highlight$<-table"](read["file!"](key))
        else
          do end (require(("kreative.highlights." .. key))).init()
          write["file!"](key, json.encode(json["file-parse"](key)))
        end
      end
    else
      for key, _1 in pairs(integrations) do
        do end (require(("kreative.highlights." .. key))).init()
        write["file!"](key, json.encode(json["file-parse"](key)))
      end
    end
    do end (require("kreative.highlights.terminal")).init()
    require("kreative.utils.export.init")
    do end (require("kreative.utils.export.render")).init()
    local has_overrides = override.files()
    if has_overrides then
      for file, _1 in pairs(has_overrides) do
        if string.find(file, matcher, 1, true) then
          run["highlight$<-table"](read["full-file!"](file))
        else
        end
      end
    else
    end
  end
  local ende = vim.fn.reltimestr(vim.fn.reltime(start))
  return print(("done " .. ende))
end
_2amodule_2a["init"] = init
return _2amodule_2a