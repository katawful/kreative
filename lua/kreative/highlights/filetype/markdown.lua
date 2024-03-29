local _2afile_2a = "fnl/kreative/highlights/filetype/markdown.fnl"
local _2amodule_name_2a = "kreative.highlights.filetype.markdown"
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
  return {{group = "markdownItalic", fg = "SKIP", bg = "SKIP", ctermfg = "SKIP", ctermbg = "SKIP", italic = true}, {group = "markdownBold", fg = "SKIP", bg = "SKIP", ctermfg = "SKIP", ctermbg = "SKIP", bold = true}, {group = "markdownBoldItalic", fg = "SKIP", bg = "SKIP", ctermfg = "SKIP", ctermbg = "SKIP", bold = true, italic = true}, {group = "markdownH1", fg = ucolors.darken(colors.kreative.blue.base.color, 0), bg = "SKIP", ctermfg = 4, ctermbg = "SKIP", bold = true}, {group = "markdownH2", fg = ucolors.darken(colors.kreative.blue.base.color, 0.3), bg = "SKIP", ctermfg = 12, ctermbg = "SKIP", bold = true}, {group = "markdownH3", fg = ucolors.darken(colors.kreative.orange.base.color, 0), bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "markdownH4", fg = ucolors.darken(colors.kreative.orange.base.color, 0.3), bg = "SKIP", ctermfg = 11, ctermbg = "SKIP", bold = true}, {group = "markdownH5", fg = ucolors.darken(colors.kreative.pink.base.color, 0), bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", bold = true}, {group = "markdownH6", fg = ucolors.darken(colors.kreative.pink.base.color, 0.3), bg = "SKIP", ctermfg = 13, ctermbg = "SKIP", bold = true}, {group = "markdownCode", fg = colors.kreative.fg.meld.color, bg = colors.kreative.bg.shadow.color, ctermfg = 15, ctermbg = 8}, {group = "markdownCodeDelimiter", fg = colors.kreative.bg.shadow.color, bg = "SKIP", ctermfg = 8, ctermbg = "SKIP"}, {group = "markdownBlockqutoe", fg = colors.kreative.fg.umbra.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP", bold = true}, {group = "markdownListMarker", fg = colors.kreative.pink.base.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", bold = true}, {group = "markdownOrderedListMarker", fg = colors.kreative.pink.base.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", bold = true}, {group = "markdownRule", fg = colors.kreative.red.base.color, bg = "SKIP", ctermfg = 1, ctermbg = "SKIP"}, {group = "markdownHeadingRule", fg = colors.kreative.red.base.color, bg = "SKIP", ctermfg = 1, ctermbg = "SKIP"}, {group = "markdownUrlDelimiter", fg = colors.kreative.bg.meld.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP", bold = true}, {group = "markdownLinkDelimiter", fg = colors.kreative.bg.meld.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP", bold = true}, {group = "markdownLinkTextDelimiter", fg = colors.kreative.bg.meld.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP", bold = true}, {group = "markdownHeadingDelimiter", fg = colors.kreative.orange.base.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "markdownUrl", fg = colors.kreative.purple.base.color, bg = "SKIP", ctermfg = 6, ctermbg = "SKIP"}, {group = "markdownUrlTitleDelimiter", fg = colors.kreative.green.auto.color, bg = "SKIP", ctermfg = 2, ctermbg = "SKIP", bold = true}, {group = "markdownLinkText", fg = colors.kreative.fg.shadow.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP", underline = true, sp = colors.kreative.fg.shadow.color}, {group = "markdownIdDeclaration", fg = colors.kreative.fg.shadow.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP", underline = true, sp = colors.kreative.fg.shadow.color}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a