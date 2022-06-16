(module kreative.utils.export.init
        {autoload {hsl externals.hsluv
                   message kreative.utils.message.init
                   kitty kreative.utils.export.kitty
                   alacritty kreative.utils.export.alacritty
                   rxvt kreative.utils.export.rxvt
                   konsole kreative.utils.export.konsole
                   a aniseed.core
                   s aniseed.string}
         require-macros [kreative.katcros-fnl.macros.nvim.api.utils.macros]})

;;; Main file for exporting color files

;; Top level values
(def- comment-type {})
(def- file-header "%s %s terminal theme generated by kat.nvim
%s Generated using %s colorscheme with background set to %s

")

;; FN converts an RGB table to a comma delimited string
;; @rgb -- input rgb
;; $string -- output string

;; fnlfmt: skip
(defn rgb->string [rgb] "Converts decimal rgb table to a 256 color string"
      (let [string (string.format "%s,%s,%s"
                                  (math.floor (* (. rgb 1) 255))
                                  (math.floor (* (. rgb 2) 255))
                                  (math.floor (* (. rgb 3) 255)))]
        string))

;; FN converts a hex color string to a RGB color string
;; @hex -- input hex
;; $string -- output string
(defn hex->rgb-string [hex] "Converts a hex color to a 256 rgb string"
      (let [string (rgb->string (hsl.hex_to_rgb hex))]
        string))

;; FN -- iterate over a table of colors and mutate a needed string
;; -- This handles nested color tables for one line color strings
;; TODO -- make a true iterator?
;; @key -- key from nested table
;; @value -- value from nested table
;; $color-string mutated string of colors
(defn color-nest->one-line-color% [key value input-color]
      "Iterates over a nested color array and returns a one-line color config string"
      (var color-string input-color)
      (match (type value)
        :table (do
                 (each [sub-key sub-val (pairs value)]
                   (match (type sub-val)
                     :table (do
                              (set color-string
                                   (string.format "%s%s\n" color-string sub-key))
                              (set color-string
                                   (color-nest->one-line-color% sub-key sub-val
                                                                color-string)))
                     :string (do
                               (set color-string
                                    (string.format "%s%s %s\n" color-string
                                                   sub-key sub-val)))))))
      color-string)

;; FN -- takes a nested table of colors and converts it to a nest aware one line string of colors
;; @colors -- the input color table
;; @terminal -- the terminal used
;; $color-string -- string to be put into a file
(defn table->one-line-color [colors terminal]
      "Converts nested table of colors to a one-line color config string"
      (var color-string
           (string.format file-header (. comment-type 1) terminal
                          (. comment-type 1) (tostring vim.g.colors_name)
                          (tostring vim.o.background)))
      (each [key value (pairs colors)]
        (set color-string (string.format "%s%s\n" color-string key))
        (set color-string (color-nest->one-line-color% key value color-string)))
      color-string)

;; FN -- takes an unnested table of strings and converts to a string
;; ----- with two lines, the first being the key and the second being the value
;; -- Note: this is a variant, no comment headline is created
;; @color -- input color table
;; @terminal -- terminal used
;; $color-string -- string to be put into a file
(defn string->two-line-color* [colors terminal]
      "Converts a table of strings to a two-line color config string, with no comments"
      (let [color-string (s.join (let [tbl []]
                                   (each [key val (pairs colors)]
                                     (table.insert tbl
                                                   (string.format "%s\n%s\n"
                                                                  key val)))
                                   tbl))]
        color-string))

;; FN -- takes an unnested table of strings and converts it to a string with
;;  one line contains the key and value
;; @colors -- the input color table
;; @terminal -- the terminal used
;; $color-string -- string to be put into a file
(defn string->one-line-color [colors terminal]
      "Converts a table of strings to a one-line color config string"
      (let [color-string (s.join (let [tbl []]
                                   (table.insert tbl
                                                 (string.format file-header
                                                                (. comment-type
                                                                   1)
                                                                terminal
                                                                (. comment-type
                                                                   1)
                                                                (tostring vim.g.colors_name)
                                                                (tostring vim.o.background)))
                                   (each [key val (pairs colors)]
                                     (table.insert tbl
                                                   (string.format "%s %s\n" key
                                                                  val)))
                                   tbl))]
        color-string))

;; FN -- notify the user that a terminal theme was generated for said colorscheme
(defn notify$ [terminal] "Small wrapper around utils.message.init"
      (message.info$ (string.format (message.<-table :utils.export.init
                                                     :term-theme-generated)
                                    terminal vim.g.colors_name vim.o.background)))

;; FN -- see if we are using a kat.nvim colorscheme
(defn is-colorscheme? [] "Returns true when we are using a kat.nvim theme"
      (if (and (not= vim.g.colors_name :kat.nvim)
               (not= vim.g.colors_name :kat.nwim))
          (do
            (message.error$ (message.<-table :utils.export.init
                                             :not-colorscheme))
            false)
          (do
            true)))

;; FN -- wrap terminal generation for a single function
(defn gen_term_colors [terminal]
      "Function for Neovim interaction, determines what terminal is being run"
      (if (= (is-colorscheme?) true)
          (match (tostring terminal)
            :kitty (do
                     (tset comment-type 1 kitty.comment-type)
                     (kitty.output!))
            :alacritty (do
                         (tset comment-type 1 alacritty.comment-type)
                         (alacritty.output!))
            :rxvt-unicode (do
                            (tset comment-type 1 rxvt.comment-type)
                            (rxvt.output!))
            :urxvt (do
                     (tset comment-type 1 rxvt.comment-type)
                     (rxvt.output!))
            :konsole (do
                       (konsole.output!))
            _ (do
                (message.error$ (string.format (message.<-table :utils.export.init
                                                                :invalid-arg)
                                               terminal))))))

;; create user command for terminal color generation
(if (= (vim.fn.has :nvim-0.7) 1)
    (command- :KatGenTermTheme
              (fn [args]
                (gen_term_colors args.args)) {:nargs 1})
    (command*-vim :KatGenTermTheme {:nargs 1}
                  "lua require('kreative.utils.export.init').gen_term_colors(<args>)"))