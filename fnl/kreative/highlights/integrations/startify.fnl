(module kreative.highlights.integrations.startify
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

;;; This handles Startify

(defn high-colors [] [{:group :StartifyBracket
                       :fg colors.kreative.blue.mix_meld_bg.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true}
                      {:group :StartifyFile
                       :fg colors.kreative.purple.match_fg.color
                       :bg :SKIP
                       :ctermfg 6
                       :ctermbg :SKIP
                       :bold true}
                      {:group :StartifyNumber
                       :fg colors.kreative.blue.base.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP
                       :bold true}
                      {:group :StartifyPath
                       :fg colors.kreative.bg.sixth.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP}
                      {:group :StartifySlash
                       :fg colors.kreative.fg.meld.color
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP}
                      {:group :StartifySection
                       :fg colors.kreative.red.match_fg.color
                       :bg :SKIP
                       :ctermfg 9
                       :ctermbg :SKIP
                       :bold true}
                      {:group :StartifySpecial
                       :fg colors.kreative.bg.sixth.color
                       :bg :SKIP
                       :ctermfg 12
                       :ctermbg :SKIP}
                      {:group :StartifyHeader
                       :fg colors.kreative.pink.base.color
                       :bg :SKIP
                       :ctermfg 5
                       :ctermbg :SKIP}
                      {:group :StartifyFooter
                       :fg colors.kreative.bg.meld.color
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP}])

(defn init [] (run.highlight$<-table (high-colors)))
