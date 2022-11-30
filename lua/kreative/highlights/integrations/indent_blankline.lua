local _2afile_2a = "fnl/kreative/highlights/integrations/indent_blankline.fnl"
local _2amodule_name_2a = "kreative.highlights.integrations.indent_blankline"
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
  return {{group = "IndentBlanklineChar", fg = colors.kreative.bg.shadow.color, bg = "SKIP", ctermfg = 8, ctermbg = "SKIP", nocombine = true}, {group = "IndentBlanklineSpaceChar", fg = colors.kreative.bg.shadow.color, bg = "SKIP", ctermfg = 8, ctermbg = "SKIP", nocombine = true}, {group = "IndentBlanklineSpaceChar", fg = colors.kreative.bg.shadow.color, bg = "SKIP", ctermfg = 8, ctermbg = "SKIP", nocombine = true}, {group = "IndentBlanklineContextChar", fg = colors.kreative.blue.base.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP", nocombine = true}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a