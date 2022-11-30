(module kreative.highlights.filetype.vim
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

; this handles the vim filetype

(defn high-colors []
      [{:group :vimCommentTitle
        :fg colors.kreative.bg.shadow.color
        :bg colors.kreative.fg.shadow.color
        :ctermfg 8
        :ctermbg 15
        :bold true
        :italic true}
       {:group :vimBracket
        :fg colors.kreative.pink.match_fg.color
        :bg :SKIP
        :ctermfg 5
        :ctermbg :SKIP}
       {:group :vimMapModKey
        :fg colors.kreative.pink.match_fg.color
        :bg :SKIP
        :ctermfg 5
        :ctermbg :SKIP}
       {:group :vimFuncSID
        :fg colors.kreative.fg.umbra.color
        :bg :SKIP
        :ctermfg 15
        :ctermbg :SKIP}
       {:group :vimSetSep
        :fg colors.kreative.fg.umbra.color
        :bg :SKIP
        :ctermfg 15
        :ctermbg :SKIP}
       {:group :vimSep
        :fg colors.kreative.fg.umbra.color
        :bg :SKIP
        :ctermfg 15
        :ctermbg :SKIP}
       {:group :vimContinue
        :fg colors.kreative.fg.umbra.color
        :bg :SKIP
        :ctermfg 15
        :ctermbg :SKIP}
       {:group :vimOperParen :link :Variable}
       {:group :vimFunction :link :Function}
       {:group :vimIsCommand :link :Identifier}
       {:group :vimUserFunc :link :Function}])

(defn init [] (run.highlight$<-table (high-colors)))
