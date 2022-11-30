local _2afile_2a = "fnl/kreative/highlights/integrations/startify.fnl"
local _2amodule_name_2a = "kreative.highlights.integrations.startify"
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
  return {{group = "StartifyBracket", fg = colors.kreative.blue.mix_meld_bg.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP", bold = true}, {group = "StartifyFile", fg = colors.kreative.purple.match_fg.color, bg = "SKIP", ctermfg = 6, ctermbg = "SKIP", bold = true}, {group = "StartifyNumber", fg = colors.kreative.blue.base.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP", bold = true}, {group = "StartifyPath", fg = colors.kreative.bg.sixth.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP"}, {group = "StartifySlash", fg = colors.kreative.fg.meld.color, bg = "SKIP", ctermfg = 7, ctermbg = "SKIP"}, {group = "StartifySection", fg = colors.kreative.red.match_fg.color, bg = "SKIP", ctermfg = 9, ctermbg = "SKIP", bold = true}, {group = "StartifySpecial", fg = colors.kreative.bg.sixth.color, bg = "SKIP", ctermfg = 12, ctermbg = "SKIP"}, {group = "StartifyHeader", fg = colors.kreative.pink.base.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP"}, {group = "StartifyFooter", fg = colors.kreative.bg.meld.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP"}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a