(module kreative.highlights.integrations.treesitter
        {autoload {colors kreative.color
                   ucolors kreative.utils.highlight.utils
                   groups kreative.highlights.main
                   run kreative.utils.highlight.run
                   main kreative.main
                   syntax kreative.highlights.syntax}})

;;; this handles all tree-sitter highlight groups

(defn high-colors [] [{:group "@field"
                       :fg colors.kreative.teal.mix_purple.color
                       :bg :SKIP
                       :ctermfg 6
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@comment" :link "Comment"}
                      {:group "@error" :link "Error"}
                      {:group "@none"
                       :fg :NONE
                       :bg :NONE
                       :ctermfg :NONE
                       :ctermbg :NONE}
                      {:group "@property" :link "@field"}
                      {:group "@function.builtin"
                       :fg colors.kreative.teal.mix_red.color
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@function.macro"
                       :fg colors.kreative.pink.mix_teal.color
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true
                       :italic true}
                      {:group "@function.call"
                       :fg (-> colors.kreative.red.base.color
                               (ucolors.blend colors.kreative.green.base.color 0.7))
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true
                       :italic true}
                      {:group "@method"
                       :fg colors.kreative.teal.mix_red_brighten_dull.color
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@method.call"
                       :fg (-> colors.kreative.teal.mix_red_brighten_dull.color
                               (ucolors.blend colors.kreative.green.base.color 0.7))
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@variable" :link :Variable}
                      {:group "@parameter" :link :Variable}
                      {:group "@variable.builtin"
                       :fg colors.kreative.teal.mix_shadow_fg.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@namespace"
                       :fg colors.kreative.teal.mix_green.color
                       :bg :SKIP
                       :ctermfg 2
                       :ctermbg :SKIP}
                      {:group "@parameter.reference"
                       :fg colors.kreative.teal.mix_shadow_fg.color
                       :bg :SKIP
                       :ctermfg 8
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@annotation"
                       :fg colors.kreative.pink.mix_meld_fg.color
                       :bg :SKIP
                       :ctermfg 14
                       :ctermbg :SKIP
                       :italic true}
                      {:group "@note"
                       :fg colors.kreative.fg.shadow.color
                       :bg :SKIP
                       :ctermfg 8
                       :ctermbg :SKIP}
                      {:group "@constructor"
                       :fg colors.kreative.orange.mix_red.color
                       :bg :SKIP
                       :ctermfg 3
                       :ctermbg :SKIP}
                      {:group "@type" :link :Type}
                      {:group "@type.builtin"
                       :fg (ucolors.darken colors.kreative.orange.base.color 0.5)
                       :bg :SKIP
                       :ctermfg 11
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@type.definition" :link :Typedef}
                      {:group "@type.qualifier"
                       :fg (ucolors.brighten colors.kreative.orange.base.color 0.5)
                       :bg :SKIP
                       :ctermfg 11
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@storageclass" :link "StorageClass"}
                      {:group "@attribute"
                       :fg (-> colors.kreative.pink.base.color
                               (ucolors.blend colors.kreative.green.base.color 0.7))
                       :bg :SKIP
                       :ctermfg 6
                       :cterbg :SKIP
                       :bold true}
                      {:group "@constant" :link :Constant}
                      {:group "@constant.builtin"
                       :fg (-> colors.kreative.pink.base.color
                               (ucolors.blend colors.kreative.blue.base.color 0.8)
                               (ucolors.darken 0.2))
                       :bg :SKIP
                       :ctermfg 12
                       :ctermbg :SKIP}
                      {:group "@constant.macro"
                       :fg (ucolors.blend colors.kreative.pink.base.color
                                          colors.kreative.bg.meld.color 0.2)
                       :bg :SKIP
                       :ctermfg 13
                       :ctermbg :SKIP}
                      {:group "@keyword" :link :Keyword}
                      {:group "@keyword.function"
                       :fg (-> colors.kreative.red.base.color
                               (ucolors.blend colors.kreative.green.base.color 0.2)
                               (ucolors.brighten 0.1))
                       :bg :SKIP
                       :ctermfg 2
                       :ctermbg :SKIP
                       :bold true
                       :italic true}
                      {:group "@keyword.return"
                       :fg (-> colors.kreative.red.base.color
                               (ucolors.blend colors.kreative.blue.base.color 0.1)
                               (ucolors.brighten 0.2))
                       :bg :SKIP
                       :ctermfg 12
                       :ctermbg :SKIP
                       :bold true
                       :italic true}
                      {:group "@keyword.operator"
                       :fg (-> colors.kreative.red.base.color
                               (ucolors.blend colors.kreative.fg.meld.color 0.1)
                               (ucolors.brighten 0.2))
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP}
                      {:group "@punctuation.delimiter"
                       :fg (ucolors.blend colors.kreative.pink.base.color
                                          colors.kreative.purple.base.color 0.2)
                       :bg :SKIP
                       :ctermfg 14
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@punctuation.bracket"
                       :fg (ucolors.blend colors.kreative.pink.base.color
                                          colors.kreative.bg.sixth.color 0.2)
                       :bg :SKIP
                       :ctermfg 6
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@punctuation.special"
                       :fg (ucolors.blend colors.kreative.pink.base.color
                                          colors.kreative.plum.base.color 0.4)
                       :bg :SKIP
                       :ctermfg 13
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@tag.delimiter"
                       :fg (-> colors.kreative.pink.base.color
                               (ucolors.blend colors.kreative.red.base.color 0.4)
                               (ucolors.darken 0.2))
                       :bg :SKIP
                       :ctermfg 9
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@string" :link "String"}
                      {:group "@string.special"
                       :fg colors.kreative.plum.match_fg.color
                       :bg :SKIP
                       :ctermfg 13
                       :ctermbg :SKIP}
                      {:group "@string.regex"
                       :fg colors.kreative.green.mix_blue.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@string.escape"
                       :fg colors.kreative.green.mix_red.color
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@character" :link :Character}
                      {:group "@character.special" :link :SpecialCharacter}
                      {:group "@symbol"
                       :fg colors.kreative.green.mix_purple.color
                       :bg :SKIP
                       :ctermfg 6
                       :ctermbg :SKIP}
                      {:group "@text" :link :Normal}
                      {:group "@text.strong"
                       :fg colors.kreative.fg.auto.color
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@text.emphasis"
                       :fg colors.kreative.fg.auto.color
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP
                       :italic true}
                      {:group "@text.underline"
                       :fg colors.kreative.fg.auto.color
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP
                       :underline true}
                      {:group "@text.strike"
                       :fg colors.kreative.fg.auto.color
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP
                       :strikethrough true}
                      {:group "@text.literal"
                       :fg colors.kreative.bg.meld.color
                       :bg :SKIP
                       :ctermfg 15
                       :ctermbg :SKIP
                       :italic true}
                      {:group "@text.reference"
                       :fg colors.kreative.fg.umbra.color
                       :bg :SKIP
                       :ctermfg 15
                       :ctermbg :SKIP
                       :italic true}
                      {:group "@text.math"
                       :fg colors.kreative.blue.base.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@text.environment"
                       :fg colors.kreative.fg.umbra.color
                       :bg :SKIP
                       :ctermfg 15
                       :ctermbg :SKIP}
                      {:group "@text.environment.name"
                       :fg colors.kreative.green.auto.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true
                       :italic true}
                      {:group "@text.uri"
                       :fg colors.kreative.orange.base.color
                       :bg :SKIP
                       :ctermfg 3
                       :ctermbg :SKIP
                       :underline true}
                      {:group "@text.todo" :link :Todo}
                      {:group "@text.note"
                       :fg colors.kreative.bg.base.color
                       :bg colors.kreative.green.auto.color
                       :ctermfg 0
                       :ctermbg 2}
                      {:group "@text.warning" :link :WarningMsg}
                      {:group "@text.danger"
                       :fg colors.kreative.bg.base.color
                       :bg colors.kreative.red.match_bg.color
                       :ctermfg 0
                       :ctermbg 3
                       :bold true}
                      {:group "@text.diff.add" :link :DiffAdd}
                      {:group "@text.diff.delete" :link :DiffDelete}
                      {:group "@tag" :link :Tag}
                      {:group "@tag.attribute"
                       :fg (-> colors.kreative.red.base.color
                               (ucolors.blend colors.kreative.green.base.color 0.7)
                               (ucolors.blend colors.kreative.pink.base.color 0.7))
                       :bg :SKIP
                       :ctermfg 0
                       :ctermbg :SKIP
                       :bold true}
                      {:group "@tag.delimiter"
                       :fg (-> colors.kreative.red.base.color
                               (ucolors.blend (-> colors.kreative.bg.sixth.color
                                                  (ucolors.blend colors.kreative.fg.base.color 0.8)
                                                  (ucolors.blend colors.kreative.plum.base.color 0.8))
                                              0.3))
                       :bg :SKIP
                       :ctermfg 0
                       :ctermbg :SKIP
                       :bold true}])


(defn init [] (run.highlight$<-table (high-colors)))
