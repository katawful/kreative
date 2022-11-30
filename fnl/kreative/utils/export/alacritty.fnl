(module kreative.utils.export.alacritty
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   groups kreative.highlights.main
                   main kreative.main
                   export kreative.utils.export.init}})

;;; Exports 16 colors for alacritty terminal

(def- loop vim.loop)

(def comment-type "#")

;; FN -- generates a table of colors for kitty colors
;; $output -- table of colors where the key is the string for the alacritty group

;; fnlfmt: skip
(defn gen-colors [] "Exports a nested table of strings for alacritty"
      (local white
             (if (= main.configs.background :light)
                 (.. "'" colors.kreative.bg.base.color "'")
                 (.. "'" colors.kreative.fg.base.color "'")))
      (local black
             (if (= main.configs.background :light)
                 (.. "'" colors.kreative.fg.base.color "'")
                 (.. "'" colors.kreative.bg.base.color "'")))
      (local cyan
             (.. "'" (ucolors.brighten colors.kreative.blue.base.color 0.3) "'"))
      (let [char "'"
            output
            {"colors:"
             {" primary:"
              {"  background:" (.. char colors.kreative.bg.base.color char)
               "  foreground:" (.. char colors.kreative.fg.auto.color char)
               "  dim_foreground:" (.. char colors.kreative.fg.umbra.color char)
               "  bright_foreground:" (.. char colors.kreative.fg.meld.color char)
               "  dim_background:" (.. char colors.kreative.bg.umbra.color char)
               "  bright_background:" (.. char colors.kreative.bg.meld.color char)}
              " cursor:" {"  text:" (.. char colors.kreative.bg.base.color char)
                          "  cursor:" (.. char colors.kreative.fg.auto.color char)}
              " search:" {"  matches:" {"   foreground:" (.. char colors.kreative.bg.base.color char)
                                        "   background:" (.. char (ucolors.blend colors.kreative.orange.base.color
                                                                              colors.kreative.bg.base.color 0.7) char)}
                          "  focused_match:" {"   foreground:" (.. char colors.kreative.bg.base.color char)
                                              "   background:" (.. char colors.kreative.orange.base.color char)}}
              " hints:" {"  start:" {"   foreground:" (.. char colors.kreative.fg.auto.color char)
                                     "   background:" (.. char (ucolors.blend colors.kreative.bg.meld.color
                                                                           colors.kreative.green.auto.color 0.2) char)}
                         "  end:" {"   foreground:" (.. char colors.kreative.fg.auto.color char)
                                   "   background:" (.. char colors.kreative.green.auto.color char)}}
              " line_indicator:" {"   foreground:" :None
                                  "   background:" :None}
              " footer_bar:" {"   foreground:" (.. char colors.kreative.fg.auto.color char)
                              "   background:" (.. char colors.kreative.pink.base.color char)}
              " normal:" {"  black:" black
                          "  red:" (.. char colors.kreative.red.base.color char)
                          "  blue:" (.. char colors.kreative.blue.base.color char)
                          "  green:" (.. char colors.kreative.green.base.color char)
                          "  yellow:" (.. char colors.kreative.orange.base.color char)
                          "  cyan:" (.. char colors.kreative.purple.base.color char)
                          "  magenta:" (.. char colors.kreative.pink.base.color char)
                          "  white:" white}
              " bright:" (if (= main.configs.background :light)
                             (do
                               {"  black:" (.. char colors.kreative.fg.umbra.color char)
                                "  red:" (.. char
                                             (ucolors.darken colors.kreative.red.base.color 0.2)
                                             char)
                                "  green:" (.. char
                                               (ucolors.darken colors.kreative.green.base.color 0.2)
                                               char)
                                "  yellow:" (.. char
                                                (ucolors.darken colors.kreative.orange.base.color 0.2)
                                                char)
                                "  blue:" (.. char
                                              (ucolors.darken colors.kreative.blue.base.color 0.2)
                                              char)
                                "  magenta:" (.. char
                                                 (ucolors.darken colors.kreative.pink.base.color 0.2)
                                                 char)
                                "  cyan:" (.. char
                                              (ucolors.darken colors.kreative.purple.base.color 0.2)
                                              char)
                                "  white:" (.. char colors.kreative.bg.umbra.color char)})
                             (do
                               {"  black:" (.. char colors.kreative.bg.umbra.color char)
                                "  red:" (.. char
                                             (ucolors.brighten colors.kreative.red.base.color 0.2)
                                             char)
                                "  green:" (.. char
                                               (ucolors.brighten colors.kreative.green.base.color 0.2)
                                               char)
                                "  yellow:" (.. char
                                                (ucolors.brighten colors.kreative.orange.base.color 0.2)
                                                char)
                                "  blue:" (.. char
                                              (ucolors.brighten colors.kreative.blue.base.color 0.2)
                                              char)
                                "  magenta:" (.. char
                                                 (ucolors.brighten colors.kreative.pink.base.color 0.2)
                                                 char)
                                "  cyan:" (.. char
                                              (ucolors.brighten colors.kreative.purple.base.color 0.2)
                                              char)
                                "  white:" (.. char colors.kreative.fg.umbra.color char)}))
              " dim:" (if (= main.configs.background :dark)
                          (do
                            {"  black:" (.. char colors.kreative.fg.meld.color char)
                             "  red:" (.. char
                                          (ucolors.darken colors.kreative.red.base.color 0.2)
                                          char)
                             "  green:" (.. char
                                            (ucolors.darken colors.kreative.green.base.color 0.2)
                                            char)
                             "  yellow:" (.. char
                                             (ucolors.darken colors.kreative.orange.base.color 0.2)
                                             char)
                             "  blue:" (.. char
                                           (ucolors.darken colors.kreative.blue.base.color 0.2)
                                           char)
                             "  magenta:" (.. char
                                              (ucolors.darken colors.kreative.pink.base.color 0.2)
                                              char)
                             "  cyan:" (.. char
                                           (ucolors.darken colors.kreative.purple.base.color 0.2)
                                           char)
                             "  white:" (.. char colors.kreative.bg.meld.color char)})
                          (do
                            {"  black:" (.. char colors.kreative.bg.meld.color char)
                             "  red:" (.. char
                                          (ucolors.brighten colors.kreative.red.base.color 0.2)
                                          char)
                             "  green:" (.. char
                                            (ucolors.brighten colors.kreative.green.base.color 0.2)
                                            char)
                             "  yellow:" (.. char
                                             (ucolors.brighten colors.kreative.orange.base.color 0.2)
                                             char)
                             "  blue:" (.. char
                                           (ucolors.brighten colors.kreative.blue.base.color 0.2)
                                           char)
                             "  magenta:" (.. char
                                              (ucolors.brighten colors.kreative.pink.base.color 0.2)
                                              char)
                             "  cyan:" (.. char
                                           (ucolors.brighten colors.kreative.purple.base.color 0.2)
                                           char)
                             "  white:" (.. char (.. char colors.kreative.fg.meld.color char))}))
              " selection:" {"  text:" :CellBackground
                             "  background:" (.. char colors.kreative.blue.base.color char)}}
             "bell:" {" color:" (.. char colors.kreative.blue.base.color char)}}]
        output))

;; FN -- output alacritty string to a file at the current working directory
(defn output! [] (let [file-name (string.format "alacritty-%s-%s.yml"
                                                (tostring main.configs.colors_name)
                                                (tostring main.configs.background))
                       fd (assert (loop.fs_open file-name :w 0))]
                   (assert (loop.fs_chmod file-name 420))
                   (assert (loop.fs_write fd
                                          (export.table->one-line-color (gen-colors)
                                                                        alacritty)
                                          0))
                   (export.notify$ :alacritty)
                   (assert (loop.fs_close fd))))
