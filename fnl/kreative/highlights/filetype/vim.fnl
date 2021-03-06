(module kreative.highlights.filetype.vim
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

; this handles the vim filetype

(defn high-colors []
      [{:group :vimCommentTitle
        :fg (. (groups.shadowBG) 1)
        :bg (. (groups.shadowFG) 1)
        :ctermfg (. (groups.umbraBG) 2)
        :ctermbg (. (groups.umbraFG) 2)
        :bold true
        :italic true}
       {:group :vimBracket
        :fg (ucolors.blend (. (colors.init :normalColors) :pink)
                           (. (groups.mainFG) 1) 0.7)
        :bg :SKIP
        :ctermfg (. (groups.fillBG) 2)
        :ctermbg :SKIP}
       {:group :vimMapModKey
        :fg (ucolors.blend (. (colors.init :normalColors) :pink)
                           (. (groups.mainFG) 1) 0.8)
        :bg :SKIP
        :ctermfg (. (groups.fillBG) 2)
        :ctermbg :SKIP}
       {:group :vimFuncSID
        :fg (. (groups.umbraFG) 1)
        :bg :SKIP
        :ctermfg (. (groups.umbraFG) 2)
        :ctermbg :SKIP}
       {:group :vimSetSep
        :fg (. (groups.umbraFG) 1)
        :bg :SKIP
        :ctermfg (. (groups.umbraFG) 2)
        :ctermbg :SKIP}
       {:group :vimSep
        :fg (. (groups.umbraFG) 1)
        :bg :SKIP
        :ctermfg (. (groups.umbraFG) 2)
        :ctermbg :SKIP}
       {:group :vimContinue
        :fg (. (groups.umbraFG) 1)
        :bg :SKIP
        :ctermfg (. (groups.umbraFG) 2)
        :ctermbg :SKIP}
       {:group :vimOperParen :link :Variable}
       {:group :vimFunction :link :Function}
       {:group :vimIsCommand :link :Identifier}
       {:group :vimUserFunc :link :Function}])

(defn init [] (run.highlight$<-table (high-colors)))
