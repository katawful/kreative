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
local a, json, main, read, render, ucolors, write, _ = autoload("kreative.aniseed.core"), autoload("kreative.utils.json.init"), autoload("kreative.main"), autoload("kreative.utils.json.read"), autoload("kreative.utils.export.render"), autoload("kreative.utils.highlight.utils"), autoload("kreative.utils.json.write"), nil
_2amodule_locals_2a["a"] = a
_2amodule_locals_2a["json"] = json
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["read"] = read
_2amodule_locals_2a["render"] = render
_2amodule_locals_2a["ucolors"] = ucolors
_2amodule_locals_2a["write"] = write
_2amodule_locals_2a["_"] = _
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
  return {red = red_primary, green = green_primary, orange = orange_primary, pink = pink_primary, purple = purple_primary, blue = blue_primary}
end
_2amodule_locals_2a["def-normal-colors"] = def_normal_colors
local function def_back_colors()
  local back
  if (main.configs.background == "dark") then
    if (main.configs.contrast == "soft") then
      back = {ucolors.brighten(dark_fore_back, 0.1), dark_fore_back, ucolors.brighten(dark_fore_back, 0.3), ucolors.brighten(dark_fore_back, 0.5), ucolors.brighten(dark_fore_back, 0.7), ucolors.brighten(dark_fore_back, 0.9)}
    elseif ((main.configs.contrast == "hard") or (main.configs.contrast == nil)) then
      back = {dark_fore_back, ucolors.brighten(dark_fore_back, 0.1), ucolors.brighten(dark_fore_back, 0.3), ucolors.brighten(dark_fore_back, 0.5), ucolors.brighten(dark_fore_back, 0.7), ucolors.brighten(dark_fore_back, 0.9)}
    else
      back = nil
    end
  elseif (main.configs.background == "light") then
    if (main.configs.contrast == "soft") then
      back = {ucolors.saturation(ucolors.darken(light_fore_back, 0.1), -0.5), light_fore_back, ucolors.saturation(ucolors.darken(light_fore_back, 0.3), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.5), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.7), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.9), -0.5)}
    elseif ((main.configs.contrast == "hard") or (main.configs.contrast == nil)) then
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
  if (main.configs.background == "dark") then
    if (main.configs.contrast == "soft") then
      fore = {ucolors.saturation(ucolors.darken(light_fore_back, 0.1), -0.5), light_fore_back, ucolors.saturation(ucolors.darken(light_fore_back, 0.3), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.5), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.7), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.9), -0.5)}
    elseif ((main.configs.contrast == "hard") or (main.configs.contrast == nil)) then
      fore = {light_fore_back, ucolors.saturation(ucolors.darken(light_fore_back, 0.1), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.3), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.5), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.7), -0.5), ucolors.saturation(ucolors.darken(light_fore_back, 0.9), -0.5)}
    else
      fore = nil
    end
  elseif (main.configs.background == "light") then
    if (main.configs.contrast == "soft") then
      fore = {ucolors.brighten(dark_fore_back, 0.1), dark_fore_back, ucolors.brighten(dark_fore_back, 0.3), ucolors.brighten(dark_fore_back, 0.5), ucolors.brighten(dark_fore_back, 0.7), ucolors.brighten(dark_fore_back, 0.9)}
    elseif ((main.configs.contrast == "hard") or (main.configs.contrast == nil)) then
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
local kreative = {}
local function output()
  local color_2a
  do
    local normal_colors = def_normal_colors()
    local foreground = def_fore_colors()
    local background = def_back_colors()
    local output0 = {}
    for k, v in pairs(normal_colors) do
      output0[k] = v
    end
    for i = 1, 6 do
      output0[("f" .. (i - 1))] = foreground[i]
      output0[("b" .. (i - 1))] = background[i]
    end
    color_2a = output0
  end
  local out = {pink = {}, red = {}, blue = {}, green = {}, orange = {}, purple = {}, plum = {}, teal = {}, fg = {}, bg = {}}
  out.pink.base = {desc = "Base color, no changes applied", color = color_2a.pink}
  out.red.base = {desc = "Base color, no changes applied", color = color_2a.red}
  out.blue.base = {desc = "Base color, no changes applied", color = color_2a.blue}
  out.green.base = {desc = "Base color, no changes applied", color = color_2a.green}
  out.purple.base = {desc = "Base color, no changes applied", color = color_2a.purple}
  out.orange.base = {desc = "Base color, no changes applied", color = color_2a.orange}
  out.fg.base = {desc = "Base color, no changes applied", color = color_2a.f0}
  out.bg.base = {desc = "Base color, no changes applied", color = color_2a.b0}
  out.fg.umbra = {desc = "Umbra/second color, lighter shadow variation", color = color_2a.f1}
  out.fg.shadow = {desc = "Shadow/third color, used to contrast base fg", color = color_2a.f2}
  out.fg.meld = {desc = "Meld/fourth, used to blend in with the base fg", color = color_2a.f3}
  out.fg.fifth = {desc = "5th bg color, dark for dark background and bright for light background", color = color_2a.f4}
  out.fg.sixth = {desc = "6th bg color, dark for dark background and bright for light background", color = color_2a.f5}
  local _61_
  if ((main.configs.background == "dark") and (main.configs.contrast == "soft")) then
    _61_ = ucolors.brighten(color_2a.f0, 1)
  else
    _61_ = color_2a.f0
  end
  out.fg.auto = {desc = "Auto matching color, used to always maintain bright color regardless of contrast", color = _61_}
  out.bg.umbra = {desc = "Umbra/second color, lighter shadow variation", color = color_2a.b1}
  out.bg.shadow = {desc = "Shadow/third color, used to contrast base bg", color = color_2a.b2}
  out.bg.meld = {desc = "Meld/fourth color, used to blend in with the base fg", color = color_2a.b3}
  out.bg.fifth = {desc = "5th bg color, bright for dark background and dark for light background", color = color_2a.b4}
  out.bg.sixth = {desc = "6th bg color, bright for dark background and dark for light background", color = color_2a.b5}
  local _63_
  if (main.configs.background == "light") then
    _63_ = ucolors.saturation(ucolors.darken(color_2a.green, 0.5), 0.4)
  else
    _63_ = ucolors.saturation(ucolors.brighten(color_2a.green, 0.5), -0.2)
  end
  out.green.auto = {desc = "Auto matching color, used to increase contrast depending on background", color = _63_}
  out.green.match_fg = {desc = "Matches to base fg color", color = ucolors.blend(color_2a.green, color_2a.f0, 0.5)}
  out.green.auto_match_fg = {desc = "Matches to base fg color based on auto matching green", color = ucolors.blend(out.green.auto.color, color_2a.f0, 0.5)}
  out.green.match_bg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.green, color_2a.b0, 0.5)}
  out.green.match_bg_less = {desc = "Matches to base bg color less", color = ucolors.blend(color_2a.green, color_2a.b0, 0.7)}
  out.green.mix_blue = {desc = "Mixes in blue", color = ucolors.blend(color_2a.green, color_2a.blue, 0.5)}
  out.green.mix_red = {desc = "Mixes in red", color = ucolors.blend(color_2a.green, color_2a.red, 0.2)}
  out.green.mix_purple = {desc = "Mixes in purple", color = ucolors.saturation(ucolors.blend(color_2a.green, color_2a.purple, 0.3), 0.8)}
  out.blue.mix_orange_match_fg = {desc = "Mixes in orange, then matches to base fg color", color = ucolors.blend(ucolors.blend(color_2a.orange, color_2a.f0, 0.1), color_2a.blue, 0.2)}
  out.blue.darken = {desc = "Darkens color by 20%", color = ucolors.darken(color_2a.blue, 0.2)}
  out.blue.brighten = {desc = "Brighten color by 20%", color = ucolors.brighten(color_2a.blue, 0.2)}
  out.blue.match_fg = {desc = "Matches to base fg color", color = ucolors.blend(color_2a.blue, color_2a.f0, 0.5)}
  out.blue.match_fg_less = {desc = "Matches to base fg color, uses more of the blue", color = ucolors.blend(color_2a.blue, color_2a.f0, 0.7)}
  out.blue.match_bg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.blue, color_2a.b0, 0.5)}
  out.blue.mix_shadow_bg = {desc = "Mixes in shadow bg color", color = ucolors.blend(color_2a.blue, color_2a.b2, 0.8)}
  out.blue.mix_shadow_bg_more = {desc = "Mixes in shadow bg color more", color = ucolors.blend(color_2a.blue, color_2a.b2, 0.4)}
  out.blue.mix_meld_bg = {desc = "Mixes in meld bg color", color = ucolors.blend(color_2a.blue, color_2a.b3, 0.8)}
  do
    local teal = ucolors.blend(color_2a.blue, color_2a.b5, 0.65)
    out.teal.base = {desc = "Base color, is a mix of blue and sixth background", color = teal}
    local _65_
    if (main.configs.background == "light") then
      _65_ = ucolors.darken(ucolors.blend(teal, color_2a.f5, 0.5), 0.4)
    else
      _65_ = ucolors.brighten(ucolors.blend(teal, color_2a.f5, 0.5), 0.4)
    end
    out.teal.auto = {desc = "Auto matches based on background", color = _65_}
    out.teal.mix_purple = {desc = "Mixes in purple", color = ucolors.brighten(ucolors.blend(teal, color_2a.purple, 0.2), 0.2)}
    out.teal.mix_red = {desc = "Mixes in red", color = ucolors.blend(teal, color_2a.red, 0.3)}
    out.teal.mix_red_brighten_dull = {desc = "Mixes in red, brightens, not as bright", color = ucolors.saturation(ucolors.brighten(ucolors.blend(teal, color_2a.red, 0.3), 0.1), 0.1)}
    out.teal.mix_red_brighten = {desc = "Mixes in red, brightens, not as bright", color = ucolors.saturation(ucolors.brighten(ucolors.blend(teal, color_2a.red, 0.3), 0.1), 0.5)}
    out.teal.mix_pink = {desc = "Mixes in pink", color = ucolors.blend(teal, color_2a.pink, 0.8)}
    out.teal.mix_pink = {desc = "Mixes in pink", color = ucolors.blend(teal, color_2a.pink, 0.8)}
    out.teal.mix_shadow_fg = {desc = "Mixes in shadow fg", color = ucolors.darken(ucolors.blend(teal, color_2a.f2, 0.8), 0.2)}
    local _67_
    if (main.configs.background == "light") then
      _67_ = ucolors.darken(ucolors.blend(teal, color_2a.green, 0.3), 0.4)
    else
      _67_ = ucolors.brighten(ucolors.blend(teal, color_2a.green, 0.3), 0.2)
    end
    out.teal.mix_green = {desc = "Mixes in green, matches background", color = _67_}
  end
  out.red.match_bg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.red, color_2a.b0, 0.7)}
  out.red.match_fg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.red, color_2a.f0, 0.6)}
  out.red.mix_red = {desc = "Mixes in red", color = ucolors.brighten(ucolors.blend(color_2a.red, color_2a.red, 0.2), 0.1)}
  out.red.mix_orange = {desc = "Mixes in orange", color = ucolors.saturation(ucolors.brighten(ucolors.blend(color_2a.red, color_2a.orange, 0.2), 0.3), 0.8)}
  out.red.mix_pink = {desc = "Mixes in pink", color = ucolors.saturation(ucolors.blend(color_2a.red, color_2a.pink, 0.2), 1)}
  out.red.mix_meld_fg = {desc = "Mixes in meld fg color", color = ucolors.blend(color_2a.red, color_2a.f3, 0.2)}
  local _69_
  if (main.configs.background == "light") then
    _69_ = ucolors.darken(ucolors.blend(color_2a.red, color_2a.green, 0.2), 0.5)
  else
    _69_ = ucolors.brighten(ucolors.blend(color_2a.red, color_2a.green, 0.2), 0.5)
  end
  out.red.mix_green_variant = {desc = "Mixes in green, matches to background, variation", color = _69_}
  local _71_
  do
    local green
    do
      local output0 = ""
      if (main.configs.background == "light") then
        output0 = ucolors.saturation(ucolors.darken(color_2a.green, 0.5), 0.4)
      else
        output0 = ucolors.saturation(ucolors.brighten(color_2a.green, 0.5), -0.2)
      end
      green = output0
    end
    if (main.configs.background == "light") then
      _71_ = ucolors.darken(ucolors.blend(color_2a.red, green, 0.2), 0.5)
    else
      _71_ = ucolors.brighten(ucolors.blend(color_2a.red, green, 0.2), 0.5)
    end
  end
  out.red.mix_green = {desc = "Mixes in the auto matching green, matches background", color = _71_}
  out.red.mix_blue = {desc = "Mixes in blue", color = ucolors.brighten(ucolors.blend(color_2a.red, color_2a.blue, 0.1), 0.2)}
  out.red.mix_purple = {desk = "Mixes in purple", color = ucolors.brighten(ucolors.blend(color_2a.red, color_2a.purple, 0.2), 0.1)}
  out.red.darken = {desc = "Darkens red", color = ucolors.darken(color_2a.red, 0.2)}
  out.purple.match_bg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.purple, color_2a.b0, 0.7)}
  out.purple.match_fg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.purple, color_2a.f0, 0.7)}
  do
    local plum = ucolors.blend(color_2a.pink, color_2a.purple, 0.65)
    out.plum.base = {desc = "Base color, mixes purple and pink", color = plum}
    out.plum.match_fg = {desc = "Matches to base fg color", color = ucolors.blend(plum, color_2a.f0, 0.8)}
    out.plum.mix_red = {desc = "Mixes in red", color = ucolors.blend(plum, color_2a.red, 0.2)}
    out.plum.mix_meld_bg = {desc = "Mixes in meld bg", color = ucolors.blend(plum, color_2a.b3, 0.2)}
    out.plum.mix_green = {desc = "Mixes in green", color = ucolors.blend(plum, color_2a.green, 0.2)}
    out.plum.auto_mix_green = {desc = "Mixes in green based on auto matching green", color = ucolors.blend(plum, out.green.auto.color, 0.2)}
  end
  out.orange.match_fg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.orange, color_2a.f0, 0.7)}
  out.orange.match_fg_less = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.orange, color_2a.f0, 0.9)}
  out.orange.match_bg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.orange, color_2a.b0, 0.7)}
  out.orange.mix_green = {desc = "Mixes in green", color = ucolors.blend(color_2a.orange, color_2a.green, 0.2)}
  out.orange.auto_mix_green = {desc = "Mixes in green based on auto matching green", color = ucolors.blend(color_2a.orange, out.green.auto.color, 0.2)}
  out.orange.mix_blue = {desc = "Mixes in blue", color = ucolors.blend(color_2a.orange, color_2a.blue, 0.2)}
  out.orange.mix_sixth_bg = {desc = "Mixes in sixth bg", color = ucolors.saturation(ucolors.blend(color_2a.orange, color_2a.b5, 0.2), 1)}
  out.orange.mix_red = {desc = "Mixes in red", color = ucolors.blend(color_2a.orange, color_2a.red, 0.4)}
  out.pink.match_fg = {desc = "Matches to base fg color", color = ucolors.blend(color_2a.pink, color_2a.f0, 0.6)}
  out.pink.match_fg_less = {desc = "Matches to base fg color less", color = ucolors.blend(color_2a.pink, color_2a.f0, 0.7)}
  out.pink.match_bg = {desc = "Matches to base bg color", color = ucolors.blend(color_2a.pink, color_2a.b0, 0.6)}
  out.pink.match_bg_less = {desc = "Matches to base bg color less", color = ucolors.blend(color_2a.pink, color_2a.b0, 0.8)}
  out.pink.mix_red = {desc = "Mixes in red", color = ucolors.blend(color_2a.pink, color_2a.red, 0.2)}
  out.pink.mix_blue = {desc = "Mixes in blue", color = ucolors.blend(color_2a.pink, color_2a.blue, 0.2)}
  out.pink.mix_purple = {desc = "Mixes in purple", color = ucolors.blend(color_2a.pink, color_2a.purple, 0.2)}
  out.pink.mix_green = {desc = "Mixes in green", color = ucolors.blend(color_2a.pink, color_2a.green, 0.2)}
  out.pink.auto_mix_green = {desc = "Mixes in green based on auto matching green", color = ucolors.blend(color_2a.pink, out.green.auto.color, 0.2)}
  do
    local teal = ucolors.blend(color_2a.blue, color_2a.b5, 0.65)
    out.pink.mix_teal = {desc = "Mixes in teal", color = ucolors.blend(color_2a.pink, teal, 0.2)}
  end
  out.pink.mix_meld_fg = {desc = "Mix meld fg", color = ucolors.blend(color_2a.pink, color_2a.f3, 0.2)}
  out.pink.mix_meld_bg = {desc = "Mix meld bg", color = ucolors.blend(color_2a.pink, color_2a.b3, 0.2)}
  out.pink.mix_sixth_bg = {desc = "Mix sixth bg", color = ucolors.blend(color_2a.pink, color_2a.b5, 0.2)}
  return out
end
_2amodule_2a["output"] = output
local function update()
  kreative = read.colors(json.path)
  do
    local read_file = require("kreative.utils.json.read")
    kreative = read_file.colors(json.path())
  end
  if (a["empty?"](kreative) or (kreative == nil)) then
    kreative = output()
    if main.configs.render then
      write["colors!"]()
    else
    end
  else
  end
  _2amodule_2a["kreative"] = kreative
  return nil
end
_2amodule_2a["update"] = update
return _2amodule_2a