local _2afile_2a = "fnl/kreative/highlights/integrations/ts_rainbow.fnl"
local _2amodule_name_2a = "kreative.highlights.integrations.ts_rainbow"
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
local colors, groups, run, syntax, ucolors = autoload("kreative.color"), autoload("kreative.highlights.main"), autoload("kreative.utils.highlight.run"), autoload("kreative.highlights.syntax"), autoload("kreative.utils.highlight.utils")
do end (_2amodule_locals_2a)["colors"] = colors
_2amodule_locals_2a["groups"] = groups
_2amodule_locals_2a["run"] = run
_2amodule_locals_2a["syntax"] = syntax
_2amodule_locals_2a["ucolors"] = ucolors
local function high_colors()
  return {{group = "rainbowcol1", fg = ucolors.blend(colors.kreative.red.base.color, colors.kreative.fg.meld.color, 0.8), bg = "SKIP", ctermfg = 1, ctermbg = "SKIP"}, {group = "rainbowcol2", fg = ucolors.blend(colors.kreative.pink.base.color, colors.kreative.fg.meld.color, 0.8), bg = "SKIP", ctermfg = 2, ctermbg = "SKIP"}, {group = "rainbowcol3", fg = ucolors.blend(colors.kreative.purple.base.color, colors.kreative.fg.meld.color, 0.8), bg = "SKIP", ctermfg = 3, ctermbg = "SKIP"}, {group = "rainbowcol4", fg = ucolors.blend(colors.kreative.blue.base.color, colors.kreative.fg.meld.color, 0.8), bg = "SKIP", ctermfg = 4, ctermbg = "SKIP"}, {group = "rainbowcol5", fg = ucolors.blend(colors.kreative.green.base.color, colors.kreative.fg.meld.color, 0.8), bg = "SKIP", ctermfg = 5, ctermbg = "SKIP"}, {group = "rainbowcol6", fg = ucolors.blend(colors.kreative.orange.base.color, colors.kreative.fg.meld.color, 0.8), bg = "SKIP", ctermfg = 6, ctermbg = "SKIP"}, {group = "rainbowcol7", fg = ucolors.blend(colors.kreative.bg.sixth.color, colors.kreative.fg.meld.color, 0.8), bg = "SKIP", ctermfg = 7, ctermbg = "SKIP"}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a