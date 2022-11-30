(module kreative.highlights.integrations.indent_blankline
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

(defn high-colors [] [{:group :IndentBlanklineChar
                       :fg colors.kreative.bg.shadow.color
                       :bg :SKIP
                       :ctermfg 8
                       :ctermbg :SKIP
                       :nocombine true}
                      {:group :IndentBlanklineSpaceChar
                       :fg colors.kreative.bg.shadow.color
                       :bg :SKIP
                       :ctermfg 8
                       :ctermbg :SKIP
                       :nocombine true}
                      {:group :IndentBlanklineSpaceChar
                       :fg colors.kreative.bg.shadow.color
                       :bg :SKIP
                       :ctermfg 8
                       :ctermbg :SKIP
                       :nocombine true}
                      {:group :IndentBlanklineContextChar
                       :fg colors.kreative.blue.base.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :nocombine true}])

(defn init [] (run.highlight$<-table (high-colors)))
