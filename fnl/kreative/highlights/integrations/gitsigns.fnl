(module kreative.highlights.integrations.gitsigns
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

(defn high-colors [] [{:group :GitSignsAdd
                       :fg colors.kreative.green.auto.color
                       :bg :SKIP
                       :ctermfg 10
                       :ctermbg :SKIP
                       :bold true}
                      {:group :GitSignsAddLn
                       :fg :SKIP
                       :bg (ucolors.blend colors.kreative.green.auto.color
                                          colors.kreative.bg.base.color 0.4)
                       :ctermfg :SKIP
                       :ctermbg 10}
                      {:group :GitSignsAddLnInline
                       :fg :SKIP
                       :bg (ucolors.blend colors.kreative.green.auto.color
                                          colors.kreative.bg.base.color 0.6)
                       :ctermfg :SKIP
                       :ctermbg 10}
                      {:group :GitSignsChange
                       :fg colors.kreative.blue.base.color
                       :bg :SKIP
                       :ctermfg 12
                       :ctermbg :SKIP
                       :bold true}
                      {:group :GitSignsChangeLn
                       :fg :SKIP
                       :bg (ucolors.blend colors.kreative.blue.base.color
                                          colors.kreative.bg.base.color 0.4)
                       :ctermfg :SKIP
                       :ctermbg 12}
                      {:group :GitSignsChangeLnInline
                       :fg :SKIP
                       :bg (ucolors.blend colors.kreative.blue.base.color
                                          colors.kreative.bg.base.color 0.6)
                       :ctermfg :SKIP
                       :ctermbg 12}
                      {:group :GitSignsDelete
                       :fg colors.kreative.red.base.color
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true}
                      {:group :GitSignsDeleteLn
                       :fg :SKIP
                       :bg (ucolors.blend colors.kreative.red.base.color
                                          colors.kreative.bg.base.color 0.4)
                       :ctermfg :SKIP
                       :ctermbg 9}
                      {:group :GitSignsDeleteLnInline
                       :fg :SKIP
                       :bg (ucolors.blend colors.kreative.red.base.color
                                          colors.kreative.bg.base.color 0.6)
                       :ctermfg :SKIP
                       :ctermbg 9}])

(defn init [] (run.highlight$<-table (high-colors)))
