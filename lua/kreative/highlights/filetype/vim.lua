local _2afile_2a = "fnl/kreative/highlights/filetype/vim.fnl"
local _2amodule_name_2a = "kreative.highlights.filetype.vim"
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
  return {{group = "vimCommentTitle", fg = colors.kreative.bg.shadow.color, bg = colors.kreative.fg.shadow.color, ctermfg = 8, ctermbg = 15, bold = true, italic = true}, {group = "vimBracket", fg = colors.kreative.pink.match_fg.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP"}, {group = "vimMapModKey", fg = colors.kreative.pink.match_fg.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP"}, {group = "vimFuncSID", fg = colors.kreative.fg.umbra.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP"}, {group = "vimSetSep", fg = colors.kreative.fg.umbra.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP"}, {group = "vimSep", fg = colors.kreative.fg.umbra.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP"}, {group = "vimContinue", fg = colors.kreative.fg.umbra.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP"}, {group = "vimOperParen", link = "Variable"}, {group = "vimFunction", link = "Function"}, {group = "vimIsCommand", link = "Identifier"}, {group = "vimUserFunc", link = "Function"}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a