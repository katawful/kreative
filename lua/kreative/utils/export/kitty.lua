local _2afile_2a = "fnl/kreative/utils/export/kitty.fnl"
local _2amodule_name_2a = "kreative.utils.export.kitty"
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
  local output = {foreground = colors.kreative.fg.auto.color, background = colors.kreative.bg.base.color, selection_foreground = colors.kreative.fg.auto.color, selection_background = colors.kreative.blue.base.color, cursor = colors.kreative.fg.auto.color, cursor_text_color = colors.kreative.bg.base.color, url_color = colors.kreative.orange.base.color, active_border_color = colors.kreative.blue.base.color, inactive_border_color = colors.kreative.bg.meld.color, bell_border_color = colors.kreative.green.auto.color, active_tab_foreground = colors.kreative.fg.auto.color, active_tab_background = colors.kreative.blue.base.color, inactive_tab_foreground = colors.kreative.fg.auto.color, inactive_tab_background = ucolors.blend(colors.kreative.purple.base.color, colors.kreative.bg.meld.color, 0.5), tab_bar_background = colors.kreative.pink.base.color, tab_bar_margin_color = colors.kreative.orange.base.color, mark1_foreground = colors.kreative.bg.base.color, mark1_background = colors.kreative.red.base.color, mark2_foreground = colors.kreative.bg.base.color, mark2_background = colors.kreative.blue.base.color, mark3_foreground = colors.kreative.bg.base.color, mark3_background = colors.kreative.green.auto.color, color0 = colors.kreative.bg.base.color, color1 = colors.kreative.red.base.color, color2 = colors.kreative.green.base.color, color3 = colors.kreative.orange.base.color, color4 = colors.kreative.blue.base.color, color5 = colors.kreative.pink.base.color, color6 = colors.kreative.purple.base.color, color7 = colors.kreative.fg.auto.color, color8 = colors.kreative.bg.umbra.color, color15 = colors.kreative.fg.umbra.color}
  if (main.configs.background == "light") then
    output["color9"] = ucolors.darken(colors.kreative.red.base.color, 0.2)
    do end (output)["color10"] = ucolors.darken(colors.kreative.green.base.color, 0.2)
    do end (output)["color11"] = ucolors.darken(colors.kreative.orange.base.color, 0.2)
    do end (output)["color12"] = ucolors.darken(colors.kreative.blue.base.color, 0.2)
    do end (output)["color13"] = ucolors.darken(colors.kreative.pink.base.color, 0.2)
    do end (output)["color14"] = ucolors.darken(colors.kreative.purple.base.color, 0.2)
  else
    output["color9"] = ucolors.brighten(colors.kreative.red.base.color, 0.2)
    do end (output)["color10"] = ucolors.brighten(colors.kreative.green.base.color, 0.2)
    do end (output)["color11"] = ucolors.brighten(colors.kreative.orange.base.color, 0.2)
    do end (output)["color12"] = ucolors.brighten(colors.kreative.blue.base.color, 0.2)
    do end (output)["color13"] = ucolors.brighten(colors.kreative.pink.base.color, 0.2)
    do end (output)["color14"] = ucolors.brighten(colors.kreative.purple.base.color, 0.2)
  end
  return output
end
_2amodule_2a["gen-colors"] = gen_colors
local function output_21()
  local file_name = string.format("kitty-%s-%s.conf", tostring(main.configs.colors_name), tostring(main.configs.background))
  local fd = assert(loop.fs_open(file_name, "w", 0))
  assert(loop.fs_chmod(file_name, 420))
  assert(loop.fs_write(fd, export["string->one-line-color"](gen_colors(), "kitty"), 0))
  export["notify$"]("kitty")
  return assert(loop.fs_close(fd))
end
_2amodule_2a["output!"] = output_21
return _2amodule_2a