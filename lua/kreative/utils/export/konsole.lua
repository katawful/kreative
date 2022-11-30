local _2afile_2a = "fnl/kreative/utils/export/konsole.fnl"
local _2amodule_name_2a = "kreative.utils.export.konsole"
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
local function gen_colors()
  local output = {["[Background]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.bg.base.color)), ["[BackgroundFaint]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.bg.meld.color)), ["[BackgroundIntense]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.bg.umbra.color)), ["[Foreground]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.fg.auto.color)), ["[ForegroundFaint]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.fg.meld.color)), ["[ForegroundIntense]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.fg.umbra.color)), ["[Color0]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.bg.base.color)), ["[Color1]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.red.base.color)), ["[Color2]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.green.base.color)), ["[Color3]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.orange.base.color)), ["[Color4]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.blue.base.color)), ["[Color5]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.pink.base.color)), ["[Color6]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.purple.base.color)), ["[Color7]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.fg.auto.color)), ["[Color8]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.bg.umbra.color)), ["[Color15]"] = ("Color=" .. export["hex->rgb-string"](colors.kreative.fg.umbra.color)), ["[General]"] = string.format("Blur=false\nColorRandomization=false\nDescription=%s\nOpacity=1\nWallpaper=", (tostring(main.configs.colors_name) .. "-" .. tostring(main.configs.background)))}
  if (main.configs.background == "light") then
    output["[Color0Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.bg.base.color, 0.2)))
    do end (output)["[Color1Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color2Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color3Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color4Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color5Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color6Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color7Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.fg.base.color, 0.2)))
    do end (output)["[Color8Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.bg.umbra.color, 0.2)))
    do end (output)["[Color9Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color10Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color11Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color12Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color13Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color14Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color15Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.fg.umbra.color, 0.2)))
    do end (output)["[Color0Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.bg.base.color, 0.2)))
    do end (output)["[Color1Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color2Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color3Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color4Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color5Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color6Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color7Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.fg.base.color, 0.2)))
    do end (output)["[Color8Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.bg.umbra.color, 0.2)))
    do end (output)["[Color9Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color10Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color11Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color12Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color13Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color14Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color15Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.fg.umbra.color, 0.2)))
    do end (output)["[Color9]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color10]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color11]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color12]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color13]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color14]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.purple.base.color, 0.2)))
  else
    output["[Color0Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.bg.base.color, 0.2)))
    do end (output)["[Color1Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color2Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color3Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color4Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color5Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color6Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color7Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.fg.base.color, 0.2)))
    do end (output)["[Color8Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.bg.umbra.color, 0.2)))
    do end (output)["[Color9Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color10Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color11Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color12Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color13Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color14Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color15Faint]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.fg.umbra.color, 0.2)))
    do end (output)["[Color0Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.bg.base.color, 0.2)))
    do end (output)["[Color1Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color2Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color3Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color4Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color5Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color6Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color7Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.fg.base.color, 0.2)))
    do end (output)["[Color8Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.darken(colors.kreative.bg.umbra.color, 0.2)))
    do end (output)["[Color9Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color10Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color11Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color12Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color13Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color14Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.purple.base.color, 0.2)))
    do end (output)["[Color15Intense]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.fg.umbra.color, 0.2)))
    do end (output)["[Color9]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.red.base.color, 0.2)))
    do end (output)["[Color10]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.green.base.color, 0.2)))
    do end (output)["[Color11]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.orange.base.color, 0.2)))
    do end (output)["[Color12]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.blue.base.color, 0.2)))
    do end (output)["[Color13]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.pink.base.color, 0.2)))
    do end (output)["[Color14]"] = ("Color=" .. export["hex->rgb-string"](ucolors.brighten(colors.kreative.purple.base.color, 0.2)))
  end
  return output
end
_2amodule_2a["gen-colors"] = gen_colors
local function output_21()
  local file_name = string.format("konsole-%s-%s.colorscheme", tostring(main.configs.colors_name), tostring(main.configs.background))
  local fd = assert(loop.fs_open(file_name, "w", 0))
  assert(loop.fs_chmod(file_name, 420))
  assert(loop.fs_write(fd, export["string->two-line-color*"](gen_colors(), "konsole"), 0))
  export["notify$"]("konsole")
  return assert(loop.fs_close(fd))
end
_2amodule_2a["output!"] = output_21
return _2amodule_2a