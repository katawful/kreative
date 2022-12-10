local _2afile_2a = "fnl/kreative/highlights/terminal.fnl"
local _2amodule_name_2a = "kreative.highlights.terminal"
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
local colors, main, ucolors, _ = require("kreative.color"), require("kreative.main"), require("kreative.utils.highlight.utils"), nil
_2amodule_locals_2a["colors"] = colors
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["ucolors"] = ucolors
_2amodule_locals_2a["_"] = _
local function init()
  vim.g["terminal_color_5"] = colors.kreative.pink.base.color
  vim.g["terminal_color_6"] = colors.kreative.purple.base.color
  vim.g["terminal_color_7"] = colors.kreative.fg.base.color
  vim.g["terminal_color_0"] = colors.kreative.bg.base.color
  vim.g["terminal_color_8"] = colors.kreative.bg.umbra.color
  vim.g["terminal_color_1"] = colors.kreative.red.base.color
  vim.g["terminal_color_2"] = colors.kreative.green.base.color
  vim.g["terminal_color_3"] = colors.kreative.orange.base.color
  vim.g["terminal_color_15"] = colors.kreative.fg.umbra.color
  vim.g["terminal_color_4"] = colors.kreative.blue.base.color
  do local _ = {nil, nil, nil, nil, nil, nil, nil, nil, nil, nil} end
  if (main.configs.background == "light") then
    vim.g["terminal_color_9"] = ucolors.darken(colors.kreative.red.base.color, 0.2)
    do end (vim.g)["terminal_color_13"] = ucolors.darken(colors.kreative.pink.base.color, 0.2)
    do end (vim.g)["terminal_color_10"] = ucolors.darken(colors.kreative.green.base.color, 0.2)
    do end (vim.g)["terminal_color_14"] = ucolors.darken(colors.kreative.purple.base.color, 0.2)
    do end (vim.g)["terminal_color_11"] = ucolors.darken(colors.kreative.orange.base.color, 0.2)
    do end (vim.g)["terminal_color_12"] = ucolors.darken(colors.kreative.blue.base.color, 0.2)
    return {nil, nil, nil, nil, nil, nil}
  else
    vim.g["terminal_color_9"] = ucolors.brighten(colors.kreative.red.base.color, 0.2)
    do end (vim.g)["terminal_color_13"] = ucolors.brighten(colors.kreative.pink.base.color, 0.2)
    do end (vim.g)["terminal_color_10"] = ucolors.brighten(colors.kreative.green.base.color, 0.2)
    do end (vim.g)["terminal_color_14"] = ucolors.brighten(colors.kreative.purple.base.color, 0.2)
    do end (vim.g)["terminal_color_11"] = ucolors.brighten(colors.kreative.orange.base.color, 0.2)
    do end (vim.g)["terminal_color_12"] = ucolors.brighten(colors.kreative.blue.base.color, 0.2)
    return {nil, nil, nil, nil, nil, nil}
  end
end
_2amodule_2a["init"] = init
return _2amodule_2a