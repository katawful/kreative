(module kreative.highlights.integrations.cmp
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

; This handles nvim-cmp

(defn high-colors [] [{:group :CmpItemKind
                       :fg (. (groups.selectionBG) 1)
                       :bg (ucolors.brighten (. (groups.fillBG) 1) 0.1)
                       :ctermfg (. (groups.selectionBG) 2)
                       :ctermbg (. (groups.fillBG) 2)}])

(defn init [] (run.highlight$<-table (high-colors)))
