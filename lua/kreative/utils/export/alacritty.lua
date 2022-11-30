local _2afile_2a = "fnl/kreative/utils/export/alacritty.fnl"
local _2amodule_name_2a = "kreative.utils.export.alacritty"
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
local colors, export, groups, main, ucolors = autoload("kreative.color"), autoload("kreative.utils.export.init"), autoload("kreative.highlights.main"), autoload("kreative.main"), autoload("kreative.utils.highlight.utils")
do end (_2amodule_locals_2a)["colors"] = colors
_2amodule_locals_2a["export"] = export
_2amodule_locals_2a["groups"] = groups
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["ucolors"] = ucolors
local loop = vim.loop
_2amodule_locals_2a["loop"] = loop
local comment_type = "#"
_2amodule_2a["comment-type"] = comment_type
local function gen_colors()
  local white
  if (main.configs.background == "light") then
    white = ("'" .. colors.kreative.bg.base.color .. "'")
  else
    white = ("'" .. colors.kreative.fg.base.color .. "'")
  end
  local black
  if (main.configs.background == "light") then
    black = ("'" .. colors.kreative.fg.base.color .. "'")
  else
    black = ("'" .. colors.kreative.bg.base.color .. "'")
  end
  local cyan = ("'" .. ucolors.brighten(colors.kreative.blue.base.color, 0.3) .. "'")
  local char = "'"
  local output
  local _3_
  if (main.configs.background == "light") then
    _3_ = {["  black:"] = (char .. colors.kreative.fg.umbra.color .. char), ["  red:"] = (char .. ucolors.darken(colors.kreative.red.base.color, 0.2) .. char), ["  green:"] = (char .. ucolors.darken(colors.kreative.green.base.color, 0.2) .. char), ["  yellow:"] = (char .. ucolors.darken(colors.kreative.orange.base.color, 0.2) .. char), ["  blue:"] = (char .. ucolors.darken(colors.kreative.blue.base.color, 0.2) .. char), ["  magenta:"] = (char .. ucolors.darken(colors.kreative.pink.base.color, 0.2) .. char), ["  cyan:"] = (char .. ucolors.darken(colors.kreative.purple.base.color, 0.2) .. char), ["  white:"] = (char .. colors.kreative.bg.umbra.color .. char)}
  else
    _3_ = {["  black:"] = (char .. colors.kreative.bg.umbra.color .. char), ["  red:"] = (char .. ucolors.brighten(colors.kreative.red.base.color, 0.2) .. char), ["  green:"] = (char .. ucolors.brighten(colors.kreative.green.base.color, 0.2) .. char), ["  yellow:"] = (char .. ucolors.brighten(colors.kreative.orange.base.color, 0.2) .. char), ["  blue:"] = (char .. ucolors.brighten(colors.kreative.blue.base.color, 0.2) .. char), ["  magenta:"] = (char .. ucolors.brighten(colors.kreative.pink.base.color, 0.2) .. char), ["  cyan:"] = (char .. ucolors.brighten(colors.kreative.purple.base.color, 0.2) .. char), ["  white:"] = (char .. colors.kreative.fg.umbra.color .. char)}
  end
  local _5_
  if (main.configs.background == "dark") then
    _5_ = {["  black:"] = (char .. colors.kreative.fg.meld.color .. char), ["  red:"] = (char .. ucolors.darken(colors.kreative.red.base.color, 0.2) .. char), ["  green:"] = (char .. ucolors.darken(colors.kreative.green.base.color, 0.2) .. char), ["  yellow:"] = (char .. ucolors.darken(colors.kreative.orange.base.color, 0.2) .. char), ["  blue:"] = (char .. ucolors.darken(colors.kreative.blue.base.color, 0.2) .. char), ["  magenta:"] = (char .. ucolors.darken(colors.kreative.pink.base.color, 0.2) .. char), ["  cyan:"] = (char .. ucolors.darken(colors.kreative.purple.base.color, 0.2) .. char), ["  white:"] = (char .. colors.kreative.bg.meld.color .. char)}
  else
    _5_ = {["  black:"] = (char .. colors.kreative.bg.meld.color .. char), ["  red:"] = (char .. ucolors.brighten(colors.kreative.red.base.color, 0.2) .. char), ["  green:"] = (char .. ucolors.brighten(colors.kreative.green.base.color, 0.2) .. char), ["  yellow:"] = (char .. ucolors.brighten(colors.kreative.orange.base.color, 0.2) .. char), ["  blue:"] = (char .. ucolors.brighten(colors.kreative.blue.base.color, 0.2) .. char), ["  magenta:"] = (char .. ucolors.brighten(colors.kreative.pink.base.color, 0.2) .. char), ["  cyan:"] = (char .. ucolors.brighten(colors.kreative.purple.base.color, 0.2) .. char), ["  white:"] = (char .. (char .. colors.kreative.fg.meld.color .. char))}
  end
  output = {["colors:"] = {[" primary:"] = {["  background:"] = (char .. colors.kreative.bg.base.color .. char), ["  foreground:"] = (char .. colors.kreative.fg.auto.color .. char), ["  dim_foreground:"] = (char .. colors.kreative.fg.umbra.color .. char), ["  bright_foreground:"] = (char .. colors.kreative.fg.meld.color .. char), ["  dim_background:"] = (char .. colors.kreative.bg.umbra.color .. char), ["  bright_background:"] = (char .. colors.kreative.bg.meld.color .. char)}, [" cursor:"] = {["  text:"] = (char .. colors.kreative.bg.base.color .. char), ["  cursor:"] = (char .. colors.kreative.fg.auto.color .. char)}, [" search:"] = {["  matches:"] = {["   foreground:"] = (char .. colors.kreative.bg.base.color .. char), ["   background:"] = (char .. ucolors.blend(colors.kreative.orange.base.color, colors.kreative.bg.base.color, 0.7) .. char)}, ["  focused_match:"] = {["   foreground:"] = (char .. colors.kreative.bg.base.color .. char), ["   background:"] = (char .. colors.kreative.orange.base.color .. char)}}, [" hints:"] = {["  start:"] = {["   foreground:"] = (char .. colors.kreative.fg.auto.color .. char), ["   background:"] = (char .. ucolors.blend(colors.kreative.bg.meld.color, colors.kreative.green.auto.color, 0.2) .. char)}, ["  end:"] = {["   foreground:"] = (char .. colors.kreative.fg.auto.color .. char), ["   background:"] = (char .. colors.kreative.green.auto.color .. char)}}, [" line_indicator:"] = {["   foreground:"] = "None", ["   background:"] = "None"}, [" footer_bar:"] = {["   foreground:"] = (char .. colors.kreative.fg.auto.color .. char), ["   background:"] = (char .. colors.kreative.pink.base.color .. char)}, [" normal:"] = {["  black:"] = black, ["  red:"] = (char .. colors.kreative.red.base.color .. char), ["  blue:"] = (char .. colors.kreative.blue.base.color .. char), ["  green:"] = (char .. colors.kreative.green.base.color .. char), ["  yellow:"] = (char .. colors.kreative.orange.base.color .. char), ["  cyan:"] = (char .. colors.kreative.purple.base.color .. char), ["  magenta:"] = (char .. colors.kreative.pink.base.color .. char), ["  white:"] = white}, [" bright:"] = _3_, [" dim:"] = _5_, [" selection:"] = {["  text:"] = "CellBackground", ["  background:"] = (char .. colors.kreative.blue.base.color .. char)}}, ["bell:"] = {[" color:"] = (char .. colors.kreative.blue.base.color .. char)}}
  return output
end
_2amodule_2a["gen-colors"] = gen_colors
local function output_21()
  local file_name = string.format("alacritty-%s-%s.yml", tostring(main.configs.colors_name), tostring(main.configs.background))
  local fd = assert(loop.fs_open(file_name, "w", 0))
  assert(loop.fs_chmod(file_name, 420))
  assert(loop.fs_write(fd, export["table->one-line-color"](gen_colors(), alacritty), 0))
  export["notify$"]("alacritty")
  return assert(loop.fs_close(fd))
end
_2amodule_2a["output!"] = output_21
return _2amodule_2a