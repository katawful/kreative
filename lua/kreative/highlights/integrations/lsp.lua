local _2afile_2a = "fnl/kreative/highlights/integrations/lsp.fnl"
local _2amodule_name_2a = "kreative.highlights.integrations.lsp"
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
  return {{group = "LspReferenceText", fg = "SKIP", bg = colors.kreative.pink.base.color, ctermfg = "SKIP", ctermbg = 5}, {group = "LspReferenceRead", fg = "SKIP", bg = colors.kreative.pink.base.color, ctermfg = "SKIP", ctermbg = 5}, {group = "LspReferenceWrite", fg = "SKIP", bg = colors.kreative.pink.base.color, ctermfg = "SKIP", ctermbg = 5}, {group = "LspCodeLens", fg = colors.kreative.bg.meld.color, bg = "SKIP", ctermfg = 8, ctermbg = "SKIP"}, {group = "LspSignatureActiveParameter", fg = colors.kreative.blue.base.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP"}, {group = "DiagnosticError", fg = colors.kreative.red.base.color, bg = "SKIP", ctermfg = 1, ctermbg = "SKIP"}, {group = "DiagnosticWarn", fg = colors.kreative.red.match_bg.color, bg = "SKIP", ctermfg = 9, ctermbg = "SKIP"}, {group = "DiagnosticInfo", fg = colors.kreative.orange.base.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP"}, {group = "DiagnosticHint", fg = colors.kreative.orange.base.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP"}, {group = "DiagnosticVirtualTextError", fg = colors.kreative.red.base.color, bg = colors.kreative.bg.umbra.color, ctermfg = 1, ctermbg = 8}, {group = "DiagnosticVirtualTextWarn", fg = colors.kreative.red.match_bg.color, bg = colors.kreative.bg.umbra.color, ctermfg = 9, ctermbg = 8}, {group = "DiagnosticVirtualTextInfo", fg = colors.kreative.orange.base.color, bg = colors.kreative.bg.umbra.color, ctermfg = 3, ctermbg = 8}, {group = "DiagnosticVirtualTextHint", fg = colors.kreative.green.auto.color, bg = colors.kreative.bg.umbra.color, ctermfg = 2, ctermbg = 8}, {group = "DiagnosticFloatingError", fg = colors.kreative.red.base.color, bg = colors.kreative.bg.shadow.color, ctermfg = 1, ctermbg = 8}, {group = "DiagnosticFloatingWarn", fg = colors.kreative.red.match_bg.color, bg = colors.kreative.bg.shadow.color, ctermfg = 9, ctermbg = 8}, {group = "DiagnosticFloatingInfo", fg = colors.kreative.orange.base.color, bg = colors.kreative.bg.shadow.color, ctermfg = 3, ctermbg = 8}, {group = "DiagnosticFloatingHint", fg = colors.kreative.green.auto.color, bg = colors.kreative.bg.shadow.color, ctermfg = 2, ctermbg = 8}, {group = "DiagnosticSignError", fg = colors.kreative.red.base.color, bg = "SKIP", ctermfg = 1, ctermbg = "SKIP", bold = true}, {group = "DiagnosticSignWarn", fg = colors.kreative.red.match_bg.color, bg = "SKIP", ctermfg = 9, ctermbg = "SKIP", bold = true}, {group = "DiagnosticSignInfo", fg = colors.kreative.orange.base.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "DiagnosticSignHint", fg = colors.kreative.green.auto.color, bg = "SKIP", ctermfg = 2, ctermbg = "SKIP", bold = true}, {group = "DiagnosticUnderlineError", fg = "SKIP", bg = "SKIP", ctermfg = "SKIP", ctermbg = "NONE", underline = true, sp = colors.kreative.red.base.color}, {group = "DiagnosticUnderlineWarn", fg = "SKIP", bg = "SKIP", ctermfg = "SKIP", ctermbg = "NONE", underline = true, sp = colors.kreative.red.match_bg.color}, {group = "DiagnosticUnderlineInfo", fg = "SKIP", bg = "SKIP", ctermfg = "SKIP", ctermbg = "NONE", underline = true, sp = colors.kreative.orange.base.color}, {group = "DiagnosticUnderlineHint", fg = "SKIP", bg = "SKIP", ctermfg = "SKIP", ctermbg = "NONE", underline = true, sp = colors.kreative.green.auto.color}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a