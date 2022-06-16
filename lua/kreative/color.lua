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
  local pink_sub
  local function _1_()
    local t_2_ = opts
    if (nil ~= t_2_) then
      t_2_ = (t_2_).pink
    else
    end
    return t_2_
  end
  local function _4_()
    local t_5_ = opts
    if (nil ~= t_5_) then
      t_5_ = (t_5_).auxiliary
    else
    end
    return t_5_
  end
  pink_sub = assert((_1_() or _4_()), "Please add a color to table key: 'pink' or 'auxiliary'")
  local orange_sub
  local function _7_()
    local t_8_ = opts
    if (nil ~= t_8_) then
      t_8_ = (t_8_).orange
    else
    end
    return t_8_
  end
  local function _10_()
    local t_11_ = opts
    if (nil ~= t_11_) then
      t_11_ = (t_11_).yellow
    else
    end
    return t_11_
  end
  orange_sub = assert((_7_() or _10_()), "Please add a color to table key: 'orange' or 'yellow'")
  local _14_
  do
    local t_13_ = opts
    if (nil ~= t_13_) then
      t_13_ = (t_13_).light_fore_back
    else
    end
    _14_ = t_13_
  end
  local _17_
  do
    local t_16_ = opts
    if (nil ~= t_16_) then
      t_16_ = (t_16_).dark_fore_back
    else
    end
    _17_ = t_16_
  end
  local _20_
  do
    local t_19_ = opts
    if (nil ~= t_19_) then
      t_19_ = (t_19_).red
    else
    end
    _20_ = t_19_
  end
  local _23_
  do
    local t_22_ = opts
    if (nil ~= t_22_) then
      t_22_ = (t_22_).green
    else
    end
    _23_ = t_22_
  end
  local _26_
  do
    local t_25_ = opts
    if (nil ~= t_25_) then
      t_25_ = (t_25_).purple
    else
    end
    _26_ = t_25_
  end
  local _29_
  do
    local t_28_ = opts
    if (nil ~= t_28_) then
      t_28_ = (t_28_).blue
    else
    end
    _29_ = t_28_
  end
  return {["light-fore-back"] = assert(_14_, "Please add a color value to table key: 'light_fore_back'"), ["dark-fore-back"] = assert(_17_, "Please add a color value to table key: 'dark_fore_back'"), ["red-primary"] = assert(_20_, "Please add a color value to table key: 'red'"), ["green-primary"] = assert(_23_, "Please add a color value to table key: 'green'"), ["orange-primary"] = orange_sub, ["pink-primary"] = pink_sub, ["purple-primary"] = assert(_26_, "Please add a color value to table key: 'purple'"), ["blue-primary"] = assert(_29_, "Please add a color value to table key: 'blue'")}
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
local function init_colors()
  light_fore_back = load_colors(_G.kreative_colors)["light-fore-back"]
  dark_fore_back = load_colors(_G.kreative_colors)["dark-fore-back"]
  red_primary = load_colors(_G.kreative_colors)["red-primary"]
  green_primary = load_colors(_G.kreative_colors)["green-primary"]
  orange_primary = load_colors(_G.kreative_colors)["orange-primary"]
  pink_primary = load_colors(_G.kreative_colors)["pink-primary"]
  purple_primary = load_colors(_G.kreative_colors)["purple-primary"]
  blue_primary = load_colors(_G.kreative_colors)["blue-primary"]
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
  local _37_ = table
  if (_37_ == "normalColors") then
    return def_normal_colors()
  elseif (_37_ == "background") then
    return def_back_colors()
  elseif (_37_ == "foreground") then
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