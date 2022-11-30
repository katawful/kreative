(module kreative.highlights.filetype.vimwiki
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

; this handles vimwiki

(defn high-colors [] [{:group :VimwikiMarkers
                       :fg colors.kreative.bg.fifth.color
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP}
                      {:group :VimwikiLink
                       :fg colors.kreative.orange.base.color
                       :bg :SKIP
                       :ctermfg 3
                       :ctermbg :SKIP
                       :bold true
                       :underline true
                       :sp colors.kreative.orange.base.color}
                      {:group :VimwikiList
                       :fg colors.kreative.blue.base.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiCheckBoxDone
                       :fg colors.kreative.green.auto.color
                       :bg :SKIP
                       :ctermfg 2
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiTag
                       :fg colors.kreative.red.base.color
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiDelText
                       :fg colors.kreative.pink.base.color
                       :bg :SKIP
                       :ctermfg 5
                       :ctermbg :SKIP
                       :strikethrough true}
                      {:group :VimwikiCode
                       :fg colors.kreative.fg.meld.color
                       :bg colors.kreative.bg.shadow.color
                       :ctermfg 15
                       :ctermbg 8}
                      {:group :VimwikiHeader1
                       :fg (ucolors.darken colors.kreative.blue.base.color 0.0)
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiHeader2
                       :fg (ucolors.darken colors.kreative.blue.base.color 0.3)
                       :bg :SKIP
                       :ctermfg 12
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiHeader3
                       :fg (ucolors.darken colors.kreative.orange.base.color 0.0)
                       :bg :SKIP
                       :ctermfg 3
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiHeader4
                       :fg (ucolors.darken colors.kreative.orange.base.color 0.3)
                       :bg :SKIP
                       :ctermfg 11
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiHeader5
                       :fg (ucolors.darken colors.kreative.pink.base.color 0.0)
                       :bg :SKIP
                       :ctermfg 5
                       :ctermbg :SKIP
                       :bold true}
                      {:group :VimwikiHeader6
                       :fg (ucolors.darken colors.kreative.pink.base.color 0.3)
                       :bg :SKIP
                       :ctermfg 13
                       :ctermbg :SKIP
                       :bold true}])

(defn init [] (run.highlight$<-table (high-colors)))
