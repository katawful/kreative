local _2afile_2a = "fnl/kreative/highlights/filetype/vimwiki.fnl"
local _2amodule_name_2a = "kreative.highlights.filetype.vimwiki"
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
  return {{group = "VimwikiMarkers", fg = colors.kreative.bg.fifth.color, bg = "SKIP", ctermfg = 7, ctermbg = "SKIP"}, {group = "VimwikiLink", fg = colors.kreative.orange.base.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true, underline = true, sp = colors.kreative.orange.base.color}, {group = "VimwikiList", fg = colors.kreative.blue.base.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP", bold = true}, {group = "VimwikiCheckBoxDone", fg = colors.kreative.green.auto.color, bg = "SKIP", ctermfg = 2, ctermbg = "SKIP", bold = true}, {group = "VimwikiTag", fg = colors.kreative.red.base.color, bg = "SKIP", ctermfg = 1, ctermbg = "SKIP", bold = true}, {group = "VimwikiDelText", fg = colors.kreative.pink.base.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", strikethrough = true}, {group = "VimwikiCode", fg = colors.kreative.fg.meld.color, bg = colors.kreative.bg.shadow.color, ctermfg = 15, ctermbg = 8}, {group = "VimwikiHeader1", fg = ucolors.darken(colors.kreative.blue.base.color, 0), bg = "SKIP", ctermfg = 4, ctermbg = "SKIP", bold = true}, {group = "VimwikiHeader2", fg = ucolors.darken(colors.kreative.blue.base.color, 0.3), bg = "SKIP", ctermfg = 12, ctermbg = "SKIP", bold = true}, {group = "VimwikiHeader3", fg = ucolors.darken(colors.kreative.orange.base.color, 0), bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "VimwikiHeader4", fg = ucolors.darken(colors.kreative.orange.base.color, 0.3), bg = "SKIP", ctermfg = 11, ctermbg = "SKIP", bold = true}, {group = "VimwikiHeader5", fg = ucolors.darken(colors.kreative.pink.base.color, 0), bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", bold = true}, {group = "VimwikiHeader6", fg = ucolors.darken(colors.kreative.pink.base.color, 0.3), bg = "SKIP", ctermfg = 13, ctermbg = "SKIP", bold = true}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a