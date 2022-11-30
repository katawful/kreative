(module kreative.highlights.main
        {autoload {colors kreative.color
                   ucolors kreative.utils.highlight.utils
                   run kreative.utils.highlight.run}
         require-macros [katcros-fnl.macros.nvim.api.utils.macros]})

(defn high-colors [] [{:group :Normal
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.bg.base.color
                       :ctermfg 7
                       :ctermbg 0}
                      {:group :NormalNC
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.bg.base.color
                       :ctermfg 7
                       :ctermbg 0}
                      {:group :NormalFloat
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg 7
                       :ctermbg 8}
                      {:group :NonText
                       :fg colors.kreative.fg.shadow.color
                       :bg colors.kreative.bg.base.color
                       :ctermfg 15
                       :ctermbg 0}
                      ;; TODO set match paren to TS rainbow?
                      {:group :MatchParen
                       :fg :SKIP
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg :SKIP
                       :ctermbg 8
                       :bold true}
                      {:group :SpecialKey
                       :fg colors.kreative.red.match_bg.color
                       :bg :NONE
                       :ctermfg 9
                       :ctermbg :NONE
                       :italic true}
                      {:group :Whitespace
                       :fg colors.kreative.fg.fifth.color
                       :bg :SKIP
                       :ctermfg 15
                       :ctermbg :SKIP}
                      {:group :EndOfBuffer
                       :fg colors.kreative.fg.umbra.color
                       :bg :SKIP
                       :ctermfg 15
                       :ctermbg :SKIP
                       :bold true}
                      {:group :Directory
                       :fg colors.kreative.blue.mix_orange_match_fg.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP}
                      {:group :Conceal
                       :fg colors.kreative.bg.shadow.color
                       :bg :NONE
                       :ctermfg 8
                       :ctermbg :NONE}
                      ;; Spelling
                      {:group :SpellBad
                       :fg :SKIP
                       :bg :SKIP
                       :ctermfg :SKIP
                       :ctermbg :NONE
                       :undercurl true
                       :sp colors.kreative.red.base.color}
                      {:group :SpellCap
                       :fg :SKIP
                       :bg :SKIP
                       :ctermfg :SKIP
                       :ctermbg :NONE
                       :undercurl true
                       :sp colors.kreative.blue.base.color}
                      {:group :SpellLocal
                       :fg :SKIP
                       :bg :SKIP
                       :ctermfg :SKIP
                       :ctermbg :NONE
                       :undercurl true
                       :sp colors.kreative.green.auto.color}
                      {:group :SpellRare
                       :fg :SKIP
                       :bg :SKIP
                       :ctermfg :SKIP
                       :ctermbg :NONE
                       :undercurl true
                       :sp colors.kreative.pink.base.color}
                      ;; Statusline
                      {:group :StatusLine
                       :fg colors.kreative.bg.fifth.color
                       :bg colors.kreative.purple.match_bg.color
                       :ctermfg 8
                       :ctermbg 14
                       :bold true}
                      {:group :StatusLineNC
                       :fg colors.kreative.purple.match_bg.color
                       :bg colors.kreative.bg.fifth.color
                       :ctermfg 8
                       :ctermbg 14
                       :bold true}
                      ;; Tabline
                      ;; Need to make the dark soft font brighter to match dark hard tabline
                      {:group :TabLine
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.purple.base.color
                       :ctermfg 7
                       :ctermbg 6}
                      {:group :TabLineFill
                       :fg colors.kreative.pink.base.color
                       :bg colors.kreative.pink.base.color
                       :ctermfg 5
                       :ctermbg 5}
                      {:group :TabLineSel
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.blue.base.color
                       :ctermfg 7
                       :ctermbg 4
                       :bold true}
                      {:group :Title
                       :fg colors.kreative.green.auto.color
                       :bg :NONE
                       :ctermfg 2
                       :ctermbg :NONE
                       :bold true}
                      {:group :Visual
                       :fg :SKIP
                       :bg colors.kreative.blue.darken.color
                       :ctermfg :SKIP
                       :ctermbg 9}
                      {:group :VisualNOS
                       :fg :SKIP
                       :bg colors.kreative.blue.match_fg.color
                       :ctermfg :SKIP
                       :ctermbg 9}
                      ;; Pmenu
                      {:group :Pmenu
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.pink.base.color
                       :ctermfg 7
                       :ctermbg 5}
                      {:group :PmenuSel
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.blue.base.color
                       :ctermfg 7
                       :ctermbg 4}
                      {:group :PmenuSbar
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.purple.base.color
                       :ctermfg 7
                       :ctermbg 6}
                      {:group :PmenuThumb
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.blue.base.color
                       :ctermfg 7
                       :ctermbg 4}
                      {:group :WildMenu
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.blue.base.color
                       :ctermfg 7
                       :ctermbg 4}
                      {:group :Question
                       :fg (ucolors.blend colors.kreative.green.auto.color
                                          colors.kreative.fg.base.color 0.7)
                       :bg :SKIP
                       :ctermfg 10
                       :ctermbg :SKIP
                       :bold true
                       :underline true
                       :sp colors.kreative.green.auto.color}
                      {:group :QuickFixLine
                       :fg :SKIP
                       :bg colors.kreative.blue.base.color
                       :ctermfg :SKIP
                       :ctermbg 4}
                      ;; Cursor
                      {:group :Cursor
                       :fg :SKIP
                       :bg colors.kreative.fg.auto.color
                       :ctermfg :SKIP
                       :ctermbg 7
                       :reverse true}
                      {:group :CursorIM
                       :fg :SKIP
                       :bg colors.kreative.fg.umbra.color
                       :ctermfg :SKIP
                       :ctermbg 15
                       :reverse true}
                      {:group :lCursor
                       :fg :SKIP
                       :bg colors.kreative.fg.shadow.color
                       :ctermfg :SKIP
                       :ctermbg 15
                       :reverse true}
                      {:group :CursorColumn
                       :fg :SKIP
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg :SKIP
                       :ctermbg 8}
                      {:group :CursorLine
                       :fg :SKIP
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg :SKIP
                       :ctermbg 8}
                      {:group :ColorColumn
                       :fg :NONE
                       :bg (ucolors.blend colors.kreative.blue.base.color
                                          colors.kreative.fg.base.color 0.8)
                       :ctermfg :NONE
                       :ctermbg 12
                       :bold true}
                      {:group :TermCursor
                       :fg :SKIP
                       :bg colors.kreative.fg.auto.color
                       :ctermfg :SKIP
                       :ctermbg 7
                       :reverse true}
                      {:group :TermCursorNC
                       :fg :SKIP
                       :bg colors.kreative.fg.umbra.color
                       :ctermfg :SKIP
                       :ctermbg 15
                       :reverse true}
                      {:group :ErrorMsg
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.red.base.color
                       :ctermfg 7
                       :ctermbg 1
                       :bold true}
                      {:group :WarningMsg
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.red.match_bg.color
                       :ctermfg 7
                       :ctermbg 9}
                      {:group :VertSplit
                       :fg colors.kreative.bg.shadow.color
                       :bg colors.kreative.fg.shadow.color
                       :ctermfg 8
                       :ctermbg 15}
                      {:group :Folded
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg 7
                       :ctermbg 8
                       :bold true}
                      {:group :FoldColumn
                       :fg colors.kreative.blue.base.color
                       :bg :NONE
                       :ctermfg 4
                       :ctermbg :NONE
                       :bold true}
                      {:group :SignColumn
                       :fg :NONE
                       :bg :NONE
                       :ctermfg :NONE
                       :ctermbg :NONE
                       :bold true}
                      {:group :IncSearch
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.orange.base.color
                       :ctermfg 7
                       :ctermbg 3
                       :reverse false}
                      {:group :Substitute
                       :fg colors.kreative.bg.base.color
                       :bg colors.kreative.orange.match_fg.color
                       :ctermfg 7
                       :ctermbg 11}
                      {:group :Search
                       :fg colors.kreative.bg.base.color
                       :bg colors.kreative.orange.match_bg.color
                       :ctermfg 7
                       :ctermbg 3}
                      {:group :LineNr
                       :fg colors.kreative.pink.base.color
                       :bg :SKIP
                       :ctermfg 5
                       :ctermbg :SKIP}
                      {:group :CursorLineNr
                       :fg colors.kreative.pink.match_fg.color
                       :bg :SKIP
                       :ctermfg 13
                       :ctermbg :SKIP
                       :bold true}
                      {:group :ModeMsg
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg 7
                       :ctermbg 8
                       :bold true}
                      {:group :MsgArea
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.bg.umbra.color
                       :ctermfg 7
                       :ctermbg 8}
                      {:group :MsgSeparator
                       :fg colors.kreative.fg.auto.color
                       :bg colors.kreative.bg.umbra.color
                       :ctermfg 7
                       :ctermbg 8}
                      {:group :MoreMsg
                       :fg colors.kreative.green.auto.color
                       :bg :SKIP
                       :ctermfg 2
                       :ctermbg :SKIP}
                      {:group :debugPC
                       :fg :SKIP
                       :bg colors.kreative.blue.match_fg.color
                       :ctermfg :SKIP
                       :ctermbg 12}
                      {:group :debugBreakpoint
                       :fg :SKIP
                       :bg colors.kreative.red.match_fg.color
                       :ctermfg :SKIP
                       :ctermbg 9}
                      (fn []
                        (if (do-viml has :gui)
                            (values
                              {:group :Menu
                               :fg colors.kreative.fg.auto.color
                               :bg colors.kreative.bg.base.color
                               :ctermfg 7
                               :ctermbg 0}
                              {:group :Tooltip
                               :fg colors.kreative.fg.auto.color
                               :bg colors.kreative.pink.base.color
                               :ctermfg 7
                               :ctermbg 5}
                              {:group :Scrollbar
                               :fg colors.kreative.fg.auto.color
                               :bg colors.kreative.purple.base.color
                               :ctermfg 7
                               :ctermbg 6})))])

(defn init [] (run.highlight$<-table (high-colors)))
