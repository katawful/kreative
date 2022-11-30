(module kreative.highlights.integrations.cmp
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

;;; This handles nvim-cmp

(defn high-colors [] [{:group :CmpItemKind
                       :fg colors.kreative.blue.base.color
                       :bg (ucolors.brighten colors.kreative.pink.base.color 0.1)
                       :ctermfg 4
                       :ctermbg 5}])

(defn init [] (run.highlight$<-table (high-colors)))
