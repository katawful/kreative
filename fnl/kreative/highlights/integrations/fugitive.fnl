(module kreative.highlights.integrations.fugitive
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

(defn high-colors [] [{:group :fugitiveHunk
                       :fg :SKIP
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg :SKIP
                       :ctermbg 8
                       :nocombine true}
                      {:group :gitDiff
                       :fg :SKIP
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg :SKIP
                       :ctermbg 8
                       :nocombine true}])

(defn init [] (run.highlight$<-table (high-colors)))
