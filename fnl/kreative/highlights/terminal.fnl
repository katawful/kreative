(module kreative.highlights.terminal
        {require {colors kreative.color
                  ucolors kreative.utils.highlight.utils
                  main kreative.main}
         require-macros [katcros-fnl.macros.nvim.api.options.macros]})

; this affects the terminal

(defn init []
      (set-vars g
                {:terminal_color_0 colors.kreative.bg.base.color
                 :terminal_color_1 colors.kreative.red.base.color
                 :terminal_color_2 colors.kreative.green.base.color
                 :terminal_color_3 colors.kreative.orange.base.color
                 :terminal_color_4 colors.kreative.blue.base.color
                 :terminal_color_5 colors.kreative.pink.base.color
                 :terminal_color_6 colors.kreative.purple.base.color
                 :terminal_color_7 colors.kreative.fg.base.color
                 :terminal_color_8 colors.kreative.bg.umbra.color
                 :terminal_color_15 colors.kreative.fg.umbra.color})
      (if (= main.configs.background :light)
          (set-vars g
                    {:terminal_color_9 (ucolors.darken colors.kreative.red.base.color
                                                       0.2)
                     :terminal_color_10 (ucolors.darken colors.kreative.green.base.color
                                                        0.2)
                     :terminal_color_11 (ucolors.darken colors.kreative.orange.base.color
                                                        0.2)
                     :terminal_color_12 (ucolors.darken colors.kreative.blue.base.color
                                                        0.2)
                     :terminal_color_13 (ucolors.darken colors.kreative.pink.base.color
                                                        0.2)
                     :terminal_color_14 (ucolors.darken colors.kreative.purple.base.color
                                                        0.2)})
          (set-vars g
                    {:terminal_color_9 (ucolors.brighten colors.kreative.red.base.color
                                                         0.2)
                     :terminal_color_10 (ucolors.brighten colors.kreative.green.base.color
                                                          0.2)
                     :terminal_color_11 (ucolors.brighten colors.kreative.orange.base.color
                                                          0.2)
                     :terminal_color_12 (ucolors.brighten colors.kreative.blue.base.color
                                                          0.2)
                     :terminal_color_13 (ucolors.brighten colors.kreative.pink.base.color
                                                          0.2)
                     :terminal_color_14 (ucolors.brighten colors.kreative.purple.base.color
                                                          0.2)})))
