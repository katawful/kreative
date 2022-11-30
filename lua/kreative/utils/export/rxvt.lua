local _2afile_2a = "fnl/kreative/utils/export/rxvt.fnl"
local _2amodule_name_2a = "kreative.utils.export.rxvt"
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
local comment_type = "!"
_2amodule_2a["comment-type"] = comment_type
local function gen_colors()
  local output = {["*foreground:"] = colors.kreative.fg.auto.color, ["*background:"] = colors.kreative.bg.base.color, ["*cursorColor:"] = colors.kreative.fg.auto.color, ["*fadeColor:"] = colors.kreative.bg.meld.color, ["*pointerColorForeground:"] = colors.kreative.fg.auto.color, ["*pointerColorBackground:"] = colors.kreative.bg.base.color, ["Urxvt*foreground:"] = colors.kreative.fg.auto.color, ["Urxvt*background:"] = colors.kreative.bg.base.color, ["URxvt*color0:"] = colors.kreative.bg.base.color, ["URxvt*color1:"] = colors.kreative.red.base.color, ["URxvt*color2:"] = colors.kreative.green.base.color, ["URxvt*color3:"] = colors.kreative.orange.base.color, ["URxvt*color4:"] = colors.kreative.blue.base.color, ["URxvt*color5:"] = colors.kreative.pink.base.color, ["URxvt*color6:"] = colors.kreative.purple.base.color, ["URxvt*color7:"] = colors.kreative.fg.auto.color, ["URxvt*color8:"] = colors.kreative.bg.umbra.color, ["URxvt*color15:"] = colors.kreative.fg.umbra.color}
  if (main.configs.background == "light") then
    output["URxvt*color9:"] = ucolors.darken(colors.kreative.red.base.color, 0.2)
    do end (output)["URxvt*color10:"] = ucolors.darken(colors.kreative.green.base.color, 0.2)
    do end (output)["URxvt*color11:"] = ucolors.darken(colors.kreative.orange.base.color, 0.2)
    do end (output)["URxvt*color12:"] = ucolors.darken(colors.kreative.blue.base.color, 0.2)
    do end (output)["URxvt*color13:"] = ucolors.darken(colors.kreative.pink.base.color, 0.2)
    do end (output)["URxvt*color14:"] = ucolors.darken(colors.kreative.purple.base.color, 0.2)
  else
    output["URxvt*color9:"] = ucolors.brighten(colors.kreative.red.base.color, 0.2)
    do end (output)["URxvt*color10:"] = ucolors.brighten(colors.kreative.green.base.color, 0.2)
    do end (output)["URxvt*color11:"] = ucolors.brighten(colors.kreative.orange.base.color, 0.2)
    do end (output)["URxvt*color12:"] = ucolors.brighten(colors.kreative.blue.base.color, 0.2)
    do end (output)["URxvt*color13:"] = ucolors.brighten(colors.kreative.pink.base.color, 0.2)
    do end (output)["URxvt*color14:"] = ucolors.brighten(colors.kreative.purple.base.color, 0.2)
  end
  return output
end
_2amodule_2a["gen-colors"] = gen_colors
local function output_21()
  local file_name = string.format("Urxvt-%s-%s.Xresources", tostring(main.configs.colors_name), tostring(main.configs.background))
  local fd = assert(loop.fs_open(file_name, "w", 0))
  assert(loop.fs_chmod(file_name, 420))
  assert(loop.fs_write(fd, export["string->one-line-color"](gen_colors(), "rxvt-unicode"), 0))
  export["notify$"]("rxvt-unicode")
  return assert(loop.fs_close(fd))
end
_2amodule_2a["output!"] = output_21
return _2amodule_2a