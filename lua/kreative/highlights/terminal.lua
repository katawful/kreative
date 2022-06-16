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
local autoload = (require("kreative.aniseed.autoload")).autoload
local colors, groups, main, syntax, ucolors, _ = autoload("kreative.color"), autoload("kreative.highlights.main"), autoload("kreative.main"), autoload("kreative.highlights.syntax"), autoload("kreative.utils.highlight.utils"), nil
_2amodule_locals_2a["colors"] = colors
_2amodule_locals_2a["groups"] = groups
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["syntax"] = syntax
_2amodule_locals_2a["ucolors"] = ucolors
_2amodule_locals_2a["_"] = _
local function init()
  vim.g["terminal_color_0"] = colors.background()[1]
  vim.g["terminal_color_1"] = (colors["normal-colors"]()).red
  vim.g["terminal_color_2"] = (colors["normal-colors"]()).green
  vim.g["terminal_color_3"] = (colors["normal-colors"]()).orange
  vim.g["terminal_color_4"] = (colors["normal-colors"]()).blue
  vim.g["terminal_color_5"] = (colors["normal-colors"]()).pink
  vim.g["terminal_color_6"] = (colors["normal-colors"]()).purple
  vim.g["terminal_color_7"] = colors.foreground()[1]
  vim.g["terminal_color_8"] = colors.background()[2]
  if (main.background == "light") then
    vim.g["terminal_color_9"] = ucolors.darken((colors["normal-colors"]()).red, 0.2)
    do end (vim.g)["terminal_color_10"] = ucolors.darken((colors["normal-colors"]()).green, 0.2)
    do end (vim.g)["terminal_color_11"] = ucolors.darken((colors["normal-colors"]()).orange, 0.2)
    do end (vim.g)["terminal_color_12"] = ucolors.darken((colors["normal-colors"]()).blue, 0.2)
    do end (vim.g)["terminal_color_13"] = ucolors.darken((colors["normal-colors"]()).pink, 0.2)
    do end (vim.g)["terminal_color_14"] = ucolors.darken((colors["normal-colors"]()).purple, 0.2)
  else
    vim.g["terminal_color_9"] = ucolors.brighten((colors["normal-colors"]()).red, 0.2)
    do end (vim.g)["terminal_color_10"] = ucolors.brighten((colors["normal-colors"]()).green, 0.2)
    do end (vim.g)["terminal_color_11"] = ucolors.brighten((colors["normal-colors"]()).orange, 0.2)
    do end (vim.g)["terminal_color_12"] = ucolors.brighten((colors["normal-colors"]()).blue, 0.2)
    do end (vim.g)["terminal_color_13"] = ucolors.brighten((colors["normal-colors"]()).pink, 0.2)
    do end (vim.g)["terminal_color_14"] = ucolors.brighten((colors["normal-colors"]()).purple, 0.2)
  end
  vim.g["terminal_color_15"] = colors.foreground()[2]
  return nil
end
_2amodule_2a["init"] = init
return _2amodule_2a