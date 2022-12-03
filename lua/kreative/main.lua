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
local colors, message, options, _, _0 = autoload("kreative.color"), autoload("kreative.utils.messages.init"), autoload("kreative.utils.options.init"), nil, nil
_2amodule_locals_2a["colors"] = colors
_2amodule_locals_2a["message"] = message
_2amodule_locals_2a["options"] = options
_2amodule_locals_2a["_"] = _0
_2amodule_locals_2a["_"] = _0
local function init(opts)
  local configs = options.default(opts)
  do end (_2amodule_2a)["configs"] = configs
  colors.kreative = {}
  print(vim.inspect(colors.kreative))
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
  if (configs.render == true) then
    do end (require("kreative.highlights.main")).init()
    do end (require("kreative.highlights.syntax")).init()
    do end (require("kreative.highlights.terminal")).init()
    require("kreative.utils.export.init")
    do end (require("kreative.utils.export.render")).init()
    for _1, v in ipairs(configs.integrations) do
      local output = ("kreative.highlights.integrations." .. v)
      require(output).init()
    end
    for _1, v in pairs(configs.filetypes) do
      local output = ("kreative.highlights.filetype." .. v)
      require(output).init()
    end
    return nil
  else
    return message["error$"](message["<-table"]("main", "render-disable"))
  end
end
_2amodule_2a["init"] = init
return _2amodule_2a