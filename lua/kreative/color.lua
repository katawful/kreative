local _2afile_2a = "fnl/kreative/color.fnl"
local _2amodule_name_2a = "kreative.color"
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
local main, ucolors = autoload("kreative.main"), autoload("kreative.utils.highlight.utils")
do end (_2amodule_locals_2a)["main"] = main
_2amodule_locals_2a["ucolors"] = ucolors
local function load_colors(opts)
  local dark_sub
  local function _1_()
    local t_2_ = opts
    if (nil ~= t_2_) then
      t_2_ = (t_2_).dark
    else
    end
    return t_2_
  end
  local function _4_()
    local t_5_ = opts
    if (nil ~= t_5_) then
      t_5_ = (t_5_).color_0
    else
    end
    return t_5_
  end
  dark_sub = assert((_1_() or _4_() or "Please add a color value to table key: 'dark', or 'color_0'"))
  local red_sub
  local function _7_()
    local t_8_ = opts
    if (nil ~= t_8_) then
      t_8_ = (t_8_).red
    else
    end
    return t_8_
  end
  local function _10_()
    local t_11_ = opts
    if (nil ~= t_11_) then
      t_11_ = (t_11_).color_1
    else
    end
    return t_11_
  end
  red_sub = assert((_7_() or _10_() or "Please add a color value to table key: 'red', or 'color_1'"))
  local green_sub
  local function _13_()
    local t_14_ = opts
    if (nil ~= t_14_) then
      t_14_ = (t_14_).green
    else
    end
    return t_14_
  end
  local function _16_()
    local t_17_ = opts
    if (nil ~= t_17_) then
      t_17_ = (t_17_).color_2
    else
    end
    return t_17_
  end
  green_sub = assert((_13_() or _16_() or "Please add a color value to table key: 'green', or 'color_2'"))
  local orange_sub
  local function _19_()
    local t_20_ = opts
    if (nil ~= t_20_) then
      t_20_ = (t_20_).orange
    else
    end
    return t_20_
  end
  local function _22_()
    local t_23_ = opts
    if (nil ~= t_23_) then
      t_23_ = (t_23_).yellow
    else
    end
    return t_23_
  end
  local function _25_()
    local t_26_ = opts
    if (nil ~= t_26_) then
      t_26_ = (t_26_).color_3
    else
    end
    return t_26_
  end
  orange_sub = assert((_19_() or _22_() or _25_()), "Please add a color to table key: 'orange', 'yellow', 'color_4'")
  local blue_sub
  local function _28_()
    local t_29_ = opts
    if (nil ~= t_29_) then
      t_29_ = (t_29_).blue
    else
    end
    return t_29_
  end
  local function _31_()
    local t_32_ = opts
    if (nil ~= t_32_) then
      t_32_ = (t_32_).color_4
    else
    end
    return t_32_
  end
  blue_sub = assert((_28_() or _31_() or "Please add a color value to table key: 'blue', or 'color_4'"))
  local pink_sub
  local function _34_()
    local t_35_ = opts
    if (nil ~= t_35_) then
      t_35_ = (t_35_).pink
    else
    end
    return t_35_
  end
  local function _37_()
    local t_38_ = opts
    if (nil ~= t_38_) then
      t_38_ = (t_38_).auxiliary
    else
    end
    return t_38_
  end
  local function _40_()
    local t_41_ = opts
    if (nil ~= t_41_) then
      t_41_ = (t_41_).color_5
    else
    end
    return t_41_
  end
  pink_sub = assert((_34_() or _37_() or _40_()), "Please add a color to table key: 'pink', 'auxiliary', or 'color_5'")
  local purple_sub
  local function _43_()
    local t_44_ = opts
    if (nil ~= t_44_) then
      t_44_ = (t_44_).purple
    else
    end
    return t_44_
  end
  local function _46_()
    local t_47_ = opts
    if (nil ~= t_47_) then
      t_47_ = (t_47_).color_6
    else
    end
    return t_47_
  end
  purple_sub = assert((_43_() or _46_()), "Please add a color value to table key: 'purple', or 'color_6'")
  local light_sub
  local function _49_()
    local t_50_ = opts
    if (nil ~= t_50_) then
      t_50_ = (t_50_).light
    else
    end
    return t_50_
  end
  local function _52_()
    local t_53_ = opts
    if (nil ~= t_53_) then
      t_53_ = (t_53_).color_7
    else
    end
    return t_53_
  end
  light_sub = assert((_49_() or _52_() or "Please add a color value to table key: 'light', or 'color_7'"))
  return {["light-fore-back"] = light_sub, ["dark-fore-back"] = dark_sub, ["red-primary"] = red_sub, ["green-primary"] = green_sub, ["orange-primary"] = orange_sub, ["pink-primary"] = pink_sub, ["purple-primary"] = purple_sub, ["blue-primary"] = blue_sub}
end
_2amodule_locals_2a["load-colors"] = load_colors
local light_fore_back = ""
local dark_fore_back = ""
local red_primary = ""
local green_primary = ""
local orange_primary = ""
local pink_primary = ""
local purple_primary = ""
local blue_primary = ""
local function init_colors(color_table)
  assert(color_table, "Please pass a color file to 'kreative.color.init-colors' in your colorscheme file")
  light_fore_back = load_colors(color_table)["light-fore-back"]
  dark_fore_back = load_colors(color_table)["dark-fore-back"]
  red_primary = load_colors(color_table)["red-primary"]
  green_primary = load_colors(color_table)["green-primary"]
  orange_primary = load_colors(color_table)["orange-primary"]
  pink_primary = load_colors(color_table)["pink-primary"]
  purple_primary = load_colors(color_table)["purple-primary"]
  blue_primary = load_colors(color_table)["blue-primary"]
  return nil
end
_2amodule_2a["init-colors"] = init_colors
local function def_normal_colors()
  local output = {red = red_primary, green = green_primary, orange = orange_primary, pink = pink_primary, purple = purple_primary, blue = blue_primary}
  return output
end
_2amodule_locals_2a["def-normal-colors"] = def_normal_colors
local function def_back_colors()
  local back
  if (vim.o.background == "dark") then
    if (main.contrast == "soft") then
      back = {ucolors.brighten(dark_fore_back, 0.1), dark_fore_back, ucolors.brighten(dark_fore_back, 0.3), ucolors.brighten(dark_fore_back, 0.5), ucolors.brighten(dark_fore_back, 0.7), ucolors.brighten(dark_fore_back, 0.9)}
    elseif ((main.contrast == "hard") or (main.contrast == nil)) then
      back = {dark_fore_back, ucolors.brighten(dark_fore_back, 0.1), ucolors.brighten(dark_fore_back, 0.3), ucolors.brighten(dark_fore_back, 0.5), ucolors.brighten(dark_fore_back, 0.7), ucolors.brighten(dark_fore_back, 0.9)}
    else
      back = nil
    end
  elseif (vim.o.background == "light") then
    if (main.contrast == "soft") then
      back = {ucolors.saturation(ucolors.darken(light_fore_back, 0.1), -0.5), light_fore_back, ucolors.saturation(ucolors.darken(light_fore_back, 0.3), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.5), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.7), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.9), -0.5)}
    elseif ((main.contrast == "hard") or (main.contrast == nil)) then
      back = {light_fore_back, ucolors.saturation(ucolors.darken(light_fore_back, 0.1), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.3), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.5), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.7), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.9), -0.5)}
    else
      back = nil
    end
  else
    back = nil
  end
  return back
end
_2amodule_locals_2a["def-back-colors"] = def_back_colors
local function def_fore_colors()
  local fore
  if (vim.o.background == "dark") then
    if (main.contrast == "soft") then
      fore = {ucolors.saturation(ucolors.darken(light_fore_back, 0.1), -0.5), light_fore_back, ucolors.saturation(ucolors.darken(light_fore_back, 0.3), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.5), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.7), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.9), -0.5)}
    elseif ((main.contrast == "hard") or (main.contrast == nil)) then
      fore = {light_fore_back, ucolors.saturation(ucolors.darken(light_fore_back, 0.1), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.3), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.5), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.7), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.9), -0.5)}
    else
      fore = nil
    end
  elseif (vim.o.background == "light") then
    if (main.contrast == "soft") then
      fore = {ucolors.brighten(dark_fore_back, 0.1), dark_fore_back, ucolors.brighten(dark_fore_back, 0.3), ucolors.brighten(dark_fore_back, 0.5), ucolors.brighten(dark_fore_back, 0.7), ucolors.brighten(dark_fore_back, 0.9)}
    elseif ((main.contrast == "hard") or (main.contrast == nil)) then
      fore = {dark_fore_back, ucolors.brighten(dark_fore_back, 0.1), ucolors.brighten(dark_fore_back, 0.3), ucolors.brighten(dark_fore_back, 0.5), ucolors.brighten(dark_fore_back, 0.7), ucolors.brighten(dark_fore_back, 0.9)}
    else
      fore = nil
    end
  else
    fore = nil
  end
  return fore
end
_2amodule_locals_2a["def-fore-colors"] = def_fore_colors
local function init(table)
  local _61_ = table
  if (_61_ == "normalColors") then
    return def_normal_colors()
  elseif (_61_ == "background") then
    return def_back_colors()
  elseif (_61_ == "foreground") then
    return def_fore_colors()
  else
    return nil
  end
end
_2amodule_2a["init"] = init
local function normal_colors()
  return def_normal_colors()
end
_2amodule_2a["normal-colors"] = normal_colors
local function background()
  return def_back_colors()
end
_2amodule_2a["background"] = background
local function foreground()
  return def_fore_colors()
end
_2amodule_2a["foreground"] = foreground
return _2amodule_2a