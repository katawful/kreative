(module kreative.highlights.terminal
        {autoload {colors kreative.color
                   ucolors kreative.utils.highlight.utils
                   syntax kreative.highlights.syntax
                   groups kreative.highlights.main
                   main kreative.main}
         require-macros [kreative.katcros-fnl.macros.nvim.api.options.macros]})

; this affects the terminal

(defn init [] (let- :g :terminal_color_0 (. (colors.background) 1))
      (let- :g :terminal_color_1 (. (colors.normal-colors) :red))
      (let- :g :terminal_color_2 (. (colors.normal-colors) :green))
      (let- :g :terminal_color_3 (. (colors.normal-colors) :orange))
      (let- :g :terminal_color_4 (. (colors.normal-colors) :blue))
      (let- :g :terminal_color_5 (. (colors.normal-colors) :pink))
      (let- :g :terminal_color_6 (. (colors.normal-colors) :purple))
      (let- :g :terminal_color_7 (. (colors.foreground) 1))
      (let- :g :terminal_color_8 (. (colors.background) 2))
      (if (= main.background :light)
          (do
            (let- :g :terminal_color_9
                  (ucolors.darken (. (colors.normal-colors) :red) 0.2))
            (let- :g :terminal_color_10
                  (ucolors.darken (. (colors.normal-colors) :green) 0.2))
            (let- :g :terminal_color_11
                  (ucolors.darken (. (colors.normal-colors) :orange) 0.2))
            (let- :g :terminal_color_12
                  (ucolors.darken (. (colors.normal-colors) :blue) 0.2))
            (let- :g :terminal_color_13
                  (ucolors.darken (. (colors.normal-colors) :pink) 0.2))
            (let- :g :terminal_color_14
                  (ucolors.darken (. (colors.normal-colors) :purple) 0.2)))
          (do
            (let- :g :terminal_color_9
                  (ucolors.brighten (. (colors.normal-colors) :red) 0.2))
            (let- :g :terminal_color_10
                  (ucolors.brighten (. (colors.normal-colors) :green) 0.2))
            (let- :g :terminal_color_11
                  (ucolors.brighten (. (colors.normal-colors) :orange) 0.2))
            (let- :g :terminal_color_12
                  (ucolors.brighten (. (colors.normal-colors) :blue) 0.2))
            (let- :g :terminal_color_13
                  (ucolors.brighten (. (colors.normal-colors) :pink) 0.2))
            (let- :g :terminal_color_14
                  (ucolors.brighten (. (colors.normal-colors) :purple) 0.2))))
      (let- :g :terminal_color_15 (. (colors.foreground) 2)))
