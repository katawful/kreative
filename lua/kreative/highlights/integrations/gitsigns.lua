local _2afile_2a = "fnl/kreative/highlights/integrations/gitsigns.fnl"
local _2amodule_name_2a = "kreative.highlights.integrations.gitsigns"
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
  return {{group = "GitSignsAdd", fg = colors.kreative.green.auto.color, bg = "SKIP", ctermfg = 10, ctermbg = "SKIP", bold = true}, {group = "GitSignsAddLn", fg = "SKIP", bg = ucolors.blend(colors.kreative.green.auto.color, colors.kreative.bg.base.color, 0.4), ctermfg = "SKIP", ctermbg = 10}, {group = "GitSignsAddLnInline", fg = "SKIP", bg = ucolors.blend(colors.kreative.green.auto.color, colors.kreative.bg.base.color, 0.6), ctermfg = "SKIP", ctermbg = 10}, {group = "GitSignsChange", fg = colors.kreative.blue.base.color, bg = "SKIP", ctermfg = 12, ctermbg = "SKIP", bold = true}, {group = "GitSignsChangeLn", fg = "SKIP", bg = ucolors.blend(colors.kreative.blue.base.color, colors.kreative.bg.base.color, 0.4), ctermfg = "SKIP", ctermbg = 12}, {group = "GitSignsChangeLnInline", fg = "SKIP", bg = ucolors.blend(colors.kreative.blue.base.color, colors.kreative.bg.base.color, 0.6), ctermfg = "SKIP", ctermbg = 12}, {group = "GitSignsDelete", fg = colors.kreative.red.base.color, bg = "SKIP", ctermfg = 1, ctermbg = "SKIP", bold = true}, {group = "GitSignsDeleteLn", fg = "SKIP", bg = ucolors.blend(colors.kreative.red.base.color, colors.kreative.bg.base.color, 0.4), ctermfg = "SKIP", ctermbg = 9}, {group = "GitSignsDeleteLnInline", fg = "SKIP", bg = ucolors.blend(colors.kreative.red.base.color, colors.kreative.bg.base.color, 0.6), ctermfg = "SKIP", ctermbg = 9}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a