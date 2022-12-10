local _2afile_2a = "fnl/kreative/highlights/syntax.fnl"
local _2amodule_name_2a = "kreative.highlights.syntax"
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
local colors, main, run, ucolors = autoload("kreative.color"), autoload("kreative.main"), autoload("kreative.utils.highlight.run"), autoload("kreative.utils.highlight.utils")
do end (_2amodule_locals_2a)["colors"] = colors
_2amodule_locals_2a["main"] = main
_2amodule_locals_2a["run"] = run
_2amodule_locals_2a["ucolors"] = ucolors
local function high_colors()
  local function _1_()
    local color_tbl = {group = "Comment", fg = colors.kreative.bg.meld.color, bg = "SKIP", ctermfg = 12, ctermbg = "SKIP"}
    for _, attr in ipairs(main.configs.comment_style) do
      color_tbl[attr] = true
    end
    return color_tbl
  end
  local function _2_()
    local color_tbl = {group = "SpecialComment", fg = colors.kreative.plum.mix_meld_bg.color, bg = "SKIP", ctermfg = 13, ctermbg = "SKIP"}
    for _, attr in ipairs(main.configs.comment_style) do
      color_tbl[attr] = true
    end
    return color_tbl
  end
  return {_1_, {group = "Constant", fg = colors.kreative.pink.base.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP"}, {group = "String", fg = colors.kreative.green.auto.color, bg = "SKIP", ctermfg = 10, ctermbg = "SKIP"}, {group = "Character", fg = colors.kreative.green.auto_match_fg.color, bg = "SKIP", ctermfg = 10, ctermbg = "SKIP", bold = true}, {group = "Number", fg = colors.kreative.pink.base.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP"}, {group = "Float", fg = colors.kreative.pink.match_fg_less.color, bg = "SKIP", ctermfg = 13, ctermbg = "SKIP"}, {group = "Boolean", fg = colors.kreative.blue.match_fg_less.color, bg = "SKIP", ctermfg = 12, ctermbg = "SKIP", bold = true}, {group = "Identifier", fg = colors.kreative.teal.base.color, bg = "SKIP", ctermfg = 12, ctermbg = "SKIP"}, {group = "Function", fg = colors.kreative.teal.mix_red_brighten.color, bg = "SKIP", ctermfg = 9, ctermbg = "SKIP", bold = true}, {group = "Variable", fg = colors.kreative.teal.auto.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP"}, {group = "Statement", fg = colors.kreative.red.base.color, bg = "SKIP", ctermfg = 1, ctermbg = "SKIP", bold = true}, {group = "Conditional", fg = colors.kreative.red.mix_purple.color, bg = "SKIP", ctermfg = 6, ctermbg = "SKIP"}, {group = "Repeat", fg = colors.kreative.red.mix_orange.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP"}, {group = "Label", fg = colors.kreative.red.mix_pink.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", bold = true}, {group = "Operator", fg = colors.kreative.red.mix_meld_fg.color, bg = "SKIP", ctermfg = 7, ctermbg = "SKIP", bold = true}, {group = "Keyword", fg = colors.kreative.red.mix_green.color, bg = "SKIP", ctermfg = 10, ctermbg = "SKIP", italic = true}, {group = "Exception", fg = colors.kreative.red.mix_blue.color, bg = "SKIP", ctermfg = 4, ctermbg = "SKIP"}, {group = "PreProc", fg = colors.kreative.pink.base.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", bold = true, italic = true}, {group = "Include", fg = colors.kreative.pink.mix_red.color, bg = "SKIP", ctermfg = 5, ctermbg = "SKIP", bold = true, italic = true}, {group = "Define", fg = colors.kreative.pink.mix_purple.color, bg = "SKIP", ctermfg = 14, ctermbg = "SKIP", bold = true, italic = true}, {group = "Macro", fg = colors.kreative.red.mix_blue.color, bg = "SKIP", ctermfg = 12, ctermbg = "SKIP", bold = true, italic = true}, {group = "PreCondit", fg = colors.kreative.pink.auto_mix_green.color, bg = "SKIP", ctermfg = 10, ctermbg = "SKIP", bold = true, italic = true}, {group = "Type", fg = colors.kreative.orange.base.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "StorageClass", fg = colors.kreative.orange.auto_mix_green.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "Structure", fg = colors.kreative.orange.mix_blue.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "Typedef", fg = colors.kreative.orange.mix_sixth_bg.color, bg = "SKIP", ctermfg = 3, ctermbg = "SKIP", bold = true}, {group = "Special", fg = colors.kreative.plum.base.color, bg = "SKIP", ctermfg = 13, ctermbg = "SKIP"}, {group = "SpecialChar", fg = colors.kreative.plum.match_fg.color, bg = "SKIP", ctermfg = 13, ctermbg = "SKIP", bold = true}, {group = "Tag", fg = colors.kreative.plum.mix_red.color, bg = "SKIP", ctermfg = 13, ctermbg = "SKIP", bold = true}, {group = "Delimiter", fg = ucolors.blend(ucolors.blend(colors.kreative.bg.sixth.color, colors.kreative.fg.base.color, 0.8), colors.kreative.plum.base.color, 0.8), bg = "SKIP", ctermfg = 13, ctermbg = "SKIP", bold = true}, _2_, {group = "Debug", fg = colors.kreative.plum.auto_mix_green.color, bg = "SKIP", ctermfg = 13, ctermbg = "SKIP", bold = true}, {group = "Underlined", fg = colors.kreative.bg.sixth.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP", underline = true, sp = colors.kreative.bg.sixth.color}, {group = "Error", fg = colors.kreative.fg.auto.color, bg = colors.kreative.red.base.color, ctermfg = 7, ctermbg = 1, bold = true}, {group = "Todo", fg = colors.kreative.bg.base.color, bg = colors.kreative.orange.match_fg_less.color, ctermfg = 7, ctermbg = 3}, {group = "Ignore", fg = colors.kreative.fg.meld.color, bg = "SKIP", ctermfg = 15, ctermbg = "SKIP"}, {group = "DiffDelete", fg = colors.kreative.fg.auto.color, bg = colors.kreative.red.darken.color, ctermfg = 7, ctermbg = 1, bold = true}, {group = "DiffAdd", fg = "SKIP", bg = colors.kreative.green.auto.color, ctermfg = 7, ctermbg = 2, bold = true}, {group = "DiffChange", fg = "SKIP", bg = colors.kreative.purple.base.color, ctermfg = 7, ctermbg = 6, bold = true}, {group = "DiffText", fg = "SKIP", bg = colors.kreative.blue.base.color, ctermfg = 7, ctermbg = 4, bold = true}, {group = "diffAdded", fg = ucolors.blend(colors.kreative.green.auto.color, colors.kreative.fg.auto.color, 0.4), bg = ucolors.blend(colors.kreative.green.auto.color, colors.kreative.bg.base.color, 0.6), ctermfg = 7, ctermbg = 10, bold = true}, {group = "diffChanged", fg = ucolors.blend(colors.kreative.blue.base.color, colors.kreative.fg.auto.color, 0.4), bg = ucolors.blend(colors.kreative.blue.base.color, colors.kreative.bg.base.color, 0.6), ctermfg = 7, ctermbg = 12, bold = true}, {group = "diffRemoved", fg = ucolors.blend(colors.kreative.red.base.color, colors.kreative.fg.auto.color, 0.4), bg = ucolors.blend(colors.kreative.red.base.color, colors.kreative.bg.base.color, 0.6), ctermfg = 7, ctermbg = 9, bold = true}}
end
_2amodule_2a["high-colors"] = high_colors
local function init()
  return run["highlight$<-table"](high_colors())
end
_2amodule_2a["init"] = init
return _2amodule_2a