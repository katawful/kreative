(module kreative.utils.export.kitty
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   groups kreative.highlights.main
                   main kreative.main
                   export kreative.utils.export.init}})

;;; This module exports the 16 colors for kitty

;; require vim.loop
(def- loop vim.loop)

(def comment-type "#")

;; FN -- generates a table of colors for kitty colors
;; $output -- a table of colors where the key is the string for kitty group
(defn gen-colors [] "Export a table of strings for kitty"
      (let [output {:foreground colors.kreative.fg.auto.color
                    :background colors.kreative.bg.base.color
                    :selection_foreground colors.kreative.fg.auto.color
                    :selection_background colors.kreative.blue.base.color
                    :cursor colors.kreative.fg.auto.color
                    :cursor_text_color colors.kreative.bg.base.color
                    :url_color colors.kreative.orange.base.color
                    :active_border_color colors.kreative.blue.base.color
                    :inactive_border_color colors.kreative.bg.meld.color
                    :bell_border_color colors.kreative.green.auto.color
                    ;; Tabs
                    :active_tab_foreground colors.kreative.fg.auto.color
                    :active_tab_background colors.kreative.blue.base.color
                    :inactive_tab_foreground colors.kreative.fg.auto.color
                    :inactive_tab_background (ucolors.blend colors.kreative.purple.base.color
                                                            colors.kreative.bg.meld.color
                                                            0.5)
                    :tab_bar_background colors.kreative.pink.base.color
                    :tab_bar_margin_color colors.kreative.orange.base.color
                    ;; Marks
                    :mark1_foreground colors.kreative.bg.base.color
                    :mark1_background colors.kreative.red.base.color
                    :mark2_foreground colors.kreative.bg.base.color
                    :mark2_background colors.kreative.blue.base.color
                    :mark3_foreground colors.kreative.bg.base.color
                    :mark3_background colors.kreative.green.auto.color
                    ;; Colors
                    :color0 colors.kreative.bg.base.color
                    :color1 colors.kreative.red.base.color
                    :color2 colors.kreative.green.base.color
                    :color3 colors.kreative.orange.base.color
                    :color4 colors.kreative.blue.base.color
                    :color5 colors.kreative.pink.base.color
                    :color6 colors.kreative.purple.base.color
                    :color7 colors.kreative.fg.auto.color
                    :color8 colors.kreative.bg.umbra.color
                    :color15 colors.kreative.fg.umbra.color}]
        (if (= main.configs.background :light)
            (do
              (tset output :color9
                    (ucolors.darken colors.kreative.red.base.color 0.2))
              (tset output :color10
                    (ucolors.darken colors.kreative.green.base.color 0.2))
              (tset output :color11
                    (ucolors.darken colors.kreative.orange.base.color 0.2))
              (tset output :color12
                    (ucolors.darken colors.kreative.blue.base.color 0.2))
              (tset output :color13
                    (ucolors.darken colors.kreative.pink.base.color 0.2))
              (tset output :color14
                    (ucolors.darken colors.kreative.purple.base.color 0.2)))
            (do
              (tset output :color9
                    (ucolors.brighten colors.kreative.red.base.color 0.2))
              (tset output :color10
                    (ucolors.brighten colors.kreative.green.base.color 0.2))
              (tset output :color11
                    (ucolors.brighten colors.kreative.orange.base.color 0.2))
              (tset output :color12
                    (ucolors.brighten colors.kreative.blue.base.color 0.2))
              (tset output :color13
                    (ucolors.brighten colors.kreative.pink.base.color 0.2))
              (tset output :color14
                    (ucolors.brighten colors.kreative.purple.base.color 0.2))))
        output))

;; FN -- output kitty string to a file at the current working directory
(defn output! [] (let [file-name (string.format "kitty-%s-%s.conf"
                                                (tostring main.configs.colors_name)
                                                (tostring main.configs.background))
                       fd (assert (loop.fs_open file-name :w 0))]
                   (assert (loop.fs_chmod file-name 420))
                   (assert (loop.fs_write fd
                                          (export.string->one-line-color (gen-colors)
                                                                         :kitty)
                                          0))
                   (export.notify$ :kitty)
                   (assert (loop.fs_close fd))))
