(module kreative.utils.export.konsole
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   groups kreative.highlights.main
                   main kreative.main
                   export kreative.utils.export.init}})

;;; This module exports the 16 colors for konsole

;; requirements
(def- loop vim.loop)

;; FN -- generates a table of colors for konsole
;; $output -- a table of colors where the key is the string for the konsole group

;; fnlfmt: skip
(defn gen-colors [] "Export a table of strings for konsole"
      (let [output {"[Background]" (.. :Color= (export.hex->rgb-string colors.kreative.bg.base.color))
                    "[BackgroundFaint]" (.. :Color= (export.hex->rgb-string colors.kreative.bg.meld.color))
                    "[BackgroundIntense]" (.. :Color= (export.hex->rgb-string colors.kreative.bg.umbra.color))
                    "[Foreground]" (.. :Color= (export.hex->rgb-string colors.kreative.fg.auto.color))
                    "[ForegroundFaint]" (.. :Color= (export.hex->rgb-string colors.kreative.fg.meld.color))
                    "[ForegroundIntense]" (.. :Color= (export.hex->rgb-string colors.kreative.fg.umbra.color))
                    "[Color0]" (.. :Color= (export.hex->rgb-string colors.kreative.bg.base.color))
                    "[Color1]" (.. :Color= (export.hex->rgb-string colors.kreative.red.base.color))
                    "[Color2]" (.. :Color= (export.hex->rgb-string colors.kreative.green.base.color))
                    "[Color3]" (.. :Color= (export.hex->rgb-string colors.kreative.orange.base.color))
                    "[Color4]" (.. :Color= (export.hex->rgb-string colors.kreative.blue.base.color))
                    "[Color5]" (.. :Color= (export.hex->rgb-string colors.kreative.pink.base.color))
                    "[Color6]" (.. :Color= (export.hex->rgb-string colors.kreative.purple.base.color))
                    "[Color7]" (.. :Color= (export.hex->rgb-string colors.kreative.fg.auto.color))
                    "[Color8]" (.. :Color= (export.hex->rgb-string colors.kreative.bg.umbra.color))
                    "[Color15]" (.. :Color= (export.hex->rgb-string colors.kreative.fg.umbra.color))
                    "[General]" (string.format "Blur=false
ColorRandomization=false
Description=%s
Opacity=1
Wallpaper="
                                               (.. (tostring main.configs.colors_name)
                                                   "-"
                                                   (tostring main.configs.background)))}]
        (if (= main.configs.background :light)
            (do
              (tset output "[Color0Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.bg.base.color 0.2))))
              (tset output "[Color1Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.red.base.color 0.2))))
              (tset output "[Color2Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.green.base.color 0.2))))
              (tset output "[Color3Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.orange.base.color 0.2))))
              (tset output "[Color4Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.blue.base.color 0.2))))
              (tset output "[Color5Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.pink.base.color 0.2))))
              (tset output "[Color6Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.purple.base.color 0.2))))
              (tset output "[Color7Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.fg.base.color 0.2))))
              (tset output "[Color8Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.bg.umbra.color 0.2))))
              (tset output "[Color9Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.red.base.color 0.2))))
              (tset output "[Color10Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.green.base.color 0.2))))
              (tset output "[Color11Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.orange.base.color 0.2))))
              (tset output "[Color12Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.blue.base.color 0.2))))
              (tset output "[Color13Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.pink.base.color 0.2))))
              (tset output "[Color14Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.purple.base.color 0.2))))
              (tset output "[Color15Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.fg.umbra.color 0.2))))
              (tset output "[Color0Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.bg.base.color 0.2))))
              (tset output "[Color1Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.red.base.color 0.2))))
              (tset output "[Color2Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.green.base.color 0.2))))
              (tset output "[Color3Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.orange.base.color 0.2))))
              (tset output "[Color4Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.blue.base.color 0.2))))
              (tset output "[Color5Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.pink.base.color 0.2))))
              (tset output "[Color6Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.purple.base.color 0.2))))
              (tset output "[Color7Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.fg.base.color 0.2))))
              (tset output "[Color8Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.bg.umbra.color 0.2))))
              (tset output "[Color9Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.red.base.color 0.2))))
              (tset output "[Color10Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.green.base.color 0.2))))
              (tset output "[Color11Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.orange.base.color 0.2))))
              (tset output "[Color12Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.blue.base.color 0.2))))
              (tset output "[Color13Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.pink.base.color 0.2))))
              (tset output "[Color14Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.purple.base.color 0.2))))
              (tset output "[Color15Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.fg.umbra.color 0.2))))
              (tset output "[Color9]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.red.base.color 0.2))))
              (tset output "[Color10]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.green.base.color 0.2))))
              (tset output "[Color11]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.orange.base.color 0.2))))
              (tset output "[Color12]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.blue.base.color 0.2))))
              (tset output "[Color13]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.pink.base.color 0.2))))
              (tset output "[Color14]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.purple.base.color 0.2)))))
            (do
              (tset output "[Color0Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.bg.base.color 0.2))))
              (tset output "[Color1Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.red.base.color 0.2))))
              (tset output "[Color2Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.green.base.color 0.2))))
              (tset output "[Color3Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.orange.base.color 0.2))))
              (tset output "[Color4Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.blue.base.color 0.2))))
              (tset output "[Color5Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.pink.base.color 0.2))))
              (tset output "[Color6Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.purple.base.color 0.2))))
              (tset output "[Color7Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.fg.base.color 0.2))))
              (tset output "[Color8Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.bg.umbra.color 0.2))))
              (tset output "[Color9Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.red.base.color 0.2))))
              (tset output "[Color10Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.green.base.color 0.2))))
              (tset output "[Color11Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.orange.base.color 0.2))))
              (tset output "[Color12Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.blue.base.color 0.2))))
              (tset output "[Color13Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.pink.base.color 0.2))))
              (tset output "[Color14Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.purple.base.color 0.2))))
              (tset output "[Color15Faint]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.fg.umbra.color 0.2))))
              (tset output "[Color0Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.bg.base.color 0.2))))
              (tset output "[Color1Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.red.base.color 0.2))))
              (tset output "[Color2Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.green.base.color 0.2))))
              (tset output "[Color3Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.orange.base.color 0.2))))
              (tset output "[Color4Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.blue.base.color 0.2))))
              (tset output "[Color5Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.pink.base.color 0.2))))
              (tset output "[Color6Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.purple.base.color 0.2))))
              (tset output "[Color7Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.fg.base.color 0.2))))
              (tset output "[Color8Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.darken colors.kreative.bg.umbra.color 0.2))))
              (tset output "[Color9Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.red.base.color 0.2))))
              (tset output "[Color10Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.green.base.color 0.2))))
              (tset output "[Color11Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.orange.base.color 0.2))))
              (tset output "[Color12Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.blue.base.color 0.2))))
              (tset output "[Color13Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.pink.base.color 0.2))))
              (tset output "[Color14Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.purple.base.color 0.2))))
              (tset output "[Color15Intense]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.fg.umbra.color 0.2))))
              (tset output "[Color9]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.red.base.color 0.2))))
              (tset output "[Color10]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.green.base.color 0.2))))
              (tset output "[Color11]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.orange.base.color 0.2))))
              (tset output "[Color12]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.blue.base.color 0.2))))
              (tset output "[Color13]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.pink.base.color 0.2))))
              (tset output "[Color14]"
                    (.. :Color= (export.hex->rgb-string (ucolors.brighten colors.kreative.purple.base.color 0.2))))))
        output))

;; FN -- output konsole string to a file at the current working directory
(defn output! [] (let [file-name (string.format "konsole-%s-%s.colorscheme"
                                                (tostring main.configs.colors_name)
                                                (tostring main.configs.background))
                       fd (assert (loop.fs_open file-name :w 0))]
                   (assert (loop.fs_chmod file-name 420))
                   (assert (loop.fs_write fd
                                          (export.string->two-line-color* (gen-colors)
                                                                          :konsole)
                                          0))
                   (export.notify$ :konsole)
                   (assert (loop.fs_close fd))))
