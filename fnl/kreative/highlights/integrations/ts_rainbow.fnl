(module kreative.highlights.integrations.ts_rainbow
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   syntax kreative.highlights.syntax
                   run kreative.utils.highlight.run
                   groups kreative.highlights.main}})

; This file handles ts-rainbow colors

(defn high-colors [] [{:group :rainbowcol1
                       :fg (ucolors.blend (. (colors.init :normalColors) :red)
                                          (. (groups.meldFG) 1) 0.8)
                       :bg :SKIP
                       :ctermfg 1
                       :ctermbg :SKIP}
                      {:group :rainbowcol2
                       :fg (ucolors.blend (. (colors.init :normalColors) :pink)
                                          (. (groups.meldFG) 1) 0.8)
                       :bg :SKIP
                       :ctermfg 2
                       :ctermbg :SKIP}
                      {:group :rainbowcol3
                       :fg (ucolors.blend (. (colors.init :normalColors)
                                             :purple)
                                          (. (groups.meldFG) 1) 0.8)
                       :bg :SKIP
                       :ctermfg 3
                       :ctermbg :SKIP}
                      {:group :rainbowcol4
                       :fg (ucolors.blend (. (colors.init :normalColors) :blue)
                                          (. (groups.meldFG) 1) 0.8)
                       :bg :SKIP
                       :ctermfg 4
                       :ctermbg :SKIP}
                      {:group :rainbowcol5
                       :fg (ucolors.blend (. (colors.init :normalColors) :green)
                                          (. (groups.meldFG) 1) 0.8)
                       :bg :SKIP
                       :ctermfg 5
                       :ctermbg :SKIP}
                      {:group :rainbowcol6
                       :fg (ucolors.blend (. (colors.init :normalColors)
                                             :orange)
                                          (. (groups.meldFG) 1) 0.8)
                       :bg :SKIP
                       :ctermfg 6
                       :ctermbg :SKIP}
                      {:group :rainbowcol7
                       :fg (ucolors.blend (. (colors.init :background) 6)
                                          (. (groups.meldFG) 1) 0.8)
                       :bg :SKIP
                       :ctermfg 7
                       :ctermbg :SKIP}])

(defn init [] (run.highlight$<-table (high-colors)))
