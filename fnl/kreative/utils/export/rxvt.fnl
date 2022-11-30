(module kreative.utils.export.rxvt
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color
                   groups kreative.highlights.main
                   main kreative.main
                   export kreative.utils.export.init}})

;;; Exports 16 colors for rxvt-unicode

(def- loop vim.loop)

(def comment-type "!")

;; FN -- generates a table of colors for rxvt
;; $output -- table of colors where the key is the string for the rxvt group
(defn gen-colors [] "Exports a table of strings for Urxvt"
      (let [output {"*foreground:" colors.kreative.fg.auto.color
                    "*background:" colors.kreative.bg.base.color
                    "*cursorColor:" colors.kreative.fg.auto.color
                    "*fadeColor:" colors.kreative.bg.meld.color
                    "*pointerColorForeground:" colors.kreative.fg.auto.color
                    "*pointerColorBackground:" colors.kreative.bg.base.color
                    "Urxvt*foreground:" colors.kreative.fg.auto.color
                    "Urxvt*background:" colors.kreative.bg.base.color
                    ; :selection_foreground colors.kreative.fg.auto.color
                    ; :selection_background colors.kreative.blue.base.color
                    ; :contrast main.configs.contrast
                    ; :shade main.configs.background
                    ; :cursor (. colors.kreative.fg.auto.color 1)
                    ; :cursor_text_color :background
                    "URxvt*color0:" colors.kreative.bg.base.color
                    "URxvt*color1:" colors.kreative.red.base.color
                    "URxvt*color2:" colors.kreative.green.base.color
                    "URxvt*color3:" colors.kreative.orange.base.color
                    "URxvt*color4:" colors.kreative.blue.base.color
                    "URxvt*color5:" colors.kreative.pink.base.color
                    "URxvt*color6:" colors.kreative.purple.base.color
                    "URxvt*color7:" colors.kreative.fg.auto.color
                    "URxvt*color8:" colors.kreative.bg.umbra.color
                    "URxvt*color15:" colors.kreative.fg.umbra.color}]
        (if (= main.configs.background :light)
            (do
              (tset output "URxvt*color9:"
                    (ucolors.darken colors.kreative.red.base.color 0.2))
              (tset output "URxvt*color10:"
                    (ucolors.darken colors.kreative.green.base.color 0.2))
              (tset output "URxvt*color11:"
                    (ucolors.darken colors.kreative.orange.base.color 0.2))
              (tset output "URxvt*color12:"
                    (ucolors.darken colors.kreative.blue.base.color 0.2))
              (tset output "URxvt*color13:"
                    (ucolors.darken colors.kreative.pink.base.color 0.2))
              (tset output "URxvt*color14:"
                    (ucolors.darken colors.kreative.purple.base.color 0.2)))
            (do
              (tset output "URxvt*color9:"
                    (ucolors.brighten colors.kreative.red.base.color 0.2))
              (tset output "URxvt*color10:"
                    (ucolors.brighten colors.kreative.green.base.color 0.2))
              (tset output "URxvt*color11:"
                    (ucolors.brighten colors.kreative.orange.base.color 0.2))
              (tset output "URxvt*color12:"
                    (ucolors.brighten colors.kreative.blue.base.color 0.2))
              (tset output "URxvt*color13:"
                    (ucolors.brighten colors.kreative.pink.base.color 0.2))
              (tset output "URxvt*color14:"
                    (ucolors.brighten colors.kreative.purple.base.color 0.2))))
        output))

;; FN -- output rxvt string to a file at the current working directory
(defn output! [] (let [file-name (string.format "Urxvt-%s-%s.Xresources"
                                                (tostring main.configs.colors_name)
                                                (tostring main.configs.background))
                       fd (assert (loop.fs_open file-name :w 0))]
                   (assert (loop.fs_chmod file-name 420))
                   (assert (loop.fs_write fd
                                          (export.string->one-line-color (gen-colors)
                                                                         :rxvt-unicode)
                                          0))
                   (export.notify$ :rxvt-unicode)
                   (assert (loop.fs_close fd))))
