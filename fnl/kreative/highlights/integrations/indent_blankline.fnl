(module kreative.highlights.integrations.indent_blankline
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

(defn high-colors [] [{:group :IndentBlanklineChar
                       :fg (. (groups.shadowBG) 1)
                       :bg :SKIP
                       :ctermfg (. (groups.umbraBG) 2)
                       :ctermbg :SKIP
                       :nocombine true}
                      {:group :IndentBlanklineSpaceChar
                       :fg (. (groups.shadowBG) 1)
                       :bg :SKIP
                       :ctermfg (. (groups.umbraBG) 2)
                       :ctermbg :SKIP
                       :nocombine true}
                      {:group :IndentBlanklineSpaceChar
                       :fg (. (groups.shadowBG) 1)
                       :bg :SKIP
                       :ctermfg (. (groups.umbraBG) 2)
                       :ctermbg :SKIP
                       :nocombine true}
                      {:group :IndentBlanklineContextChar
                       :fg (. (groups.selectionBG) 1)
                       :bg :SKIP
                       :ctermfg (. (groups.selectionBG) 2)
                       :ctermbg :SKIP
                       :nocombine true}])

(defn init [] (run.highlight$<-table (high-colors)))
