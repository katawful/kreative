(module kreative.highlights.integrations.ts_rainbow
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

;;; This file handles ts-rainbow colors

(defn high-colors [] [{:group :rainbowcol1
                       :fg (ucolors.blend colors.kreative.red.base.color
                                          colors.kreative.fg.meld.color 0.8)
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP}
                      {:group :rainbowcol2
                       :fg (ucolors.blend colors.kreative.pink.base.color
                                          colors.kreative.fg.meld.color 0.8)
                       :bg :SKIP
                       :ctermfg 2
                       :ctermbg :SKIP}
                      {:group :rainbowcol3
                       :fg (ucolors.blend colors.kreative.purple.base.color
                                          colors.kreative.fg.meld.color 0.8)
                       :bg :SKIP
                       :ctermfg 3
                       :ctermbg :SKIP}
                      {:group :rainbowcol4
                       :fg (ucolors.blend colors.kreative.blue.base.color
                                          colors.kreative.fg.meld.color 0.8)
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP}
                      {:group :rainbowcol5
                       :fg (ucolors.blend colors.kreative.green.base.color
                                          colors.kreative.fg.meld.color 0.8)
                       :bg :SKIP
                       :ctermfg 5
                       :ctermbg :SKIP}
                      {:group :rainbowcol6
                       :fg (ucolors.blend colors.kreative.orange.base.color
                                          colors.kreative.fg.meld.color 0.8)
                       :bg :SKIP
                       :ctermfg 6
                       :ctermbg :SKIP}
                      {:group :rainbowcol7
                       :fg (ucolors.blend colors.kreative.bg.sixth.color
                                          colors.kreative.fg.meld.color 0.8)
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP}])

(defn init [] (run.highlight$<-table (high-colors)))
