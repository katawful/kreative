(module kreative.utils.export.render
        {autoload {color-table kreative.color
                   main kreative.main
                   json kreative.utils.json.init
                   read kreative.utils.json.read
                   write kreative.utils.json.write
                   message kreative.utils.message.init}
         require-macros [katcros-fnl.macros.nvim.api.utils.macros
                         katcros-fnl.macros.nvim.api.options.macros]})

;;; This module handles exporting the current color scheme to a set of predefined colors

;; FN -- deal with rendering the groups needed
(defn file [] "Render to file for built in color files"
      (let [backgrounds [:light :dark]
            old-background main.configs.background]
        (each [_ v (ipairs backgrounds)]
          (set main.configs.background v)
          (color-table.update)
          (each [_ file (ipairs json.files)]
            (write.file! file (json.encode (json.file-parse file))))
          (write.colors!))
        (set main.configs.background old-background)))

(defn- color [args mutations] "Render color for a variation
@args -- a seq table of arguments
         1. table of highlight tables
         2. source
         3. colors_name
@mutations -- a seq table of mutations to use
              1. background
              2. contrast"
       (set main.configs.background (. mutations 1))
       (set main.configs.contrast (. mutations 2)) (color-table.update)
       (write.override-file! (json.encode (. args 2)) (. args 1) (. args 3)))

(defn- color* [args] "Render for all color variants
@args -- a seq table of arguments
         1. table of highlight tables
         2. source
         3. colors_name"
       (let [colors [[:light :soft :kat.nwim]
                     [:light :hard :kat.nvim]
                     [:dark :soft :kat.nwim]
                     [:dark :hard :kat.nvim]]]
         (each [_ mutator (pairs colors)]
           (set main.configs.background (. mutator 1))
           (set main.configs.contrast (. mutator 2))
           (color-table.update)
           (write.override-file! (json.encode (. args 2)) (. args 1)
                                 (. mutator 3)))
         (set main.configs.background old-background)
         (set main.configs.contrast old-contrast)))

(defn override [args] "Override groups of colors
Takes a single table, of which contains 2 keys
1. 'source' a string that describes the source this override comes from
  - implies your account name
2. the override type which is used to declare the override
 - can be one of the following
  - 'light_hard'
  - 'dark_hard'
  - 'light_soft'
  - 'dark_soft'
The second key contains a table of highlight tables.
It is best to make an override for each possible 2nd key"
      (let [old-contrast main.configs.contrast
            old-background main.configs.background
            assertion []]
        (each [k _ (pairs args)]
          (table.insert assertion true))
        (assert (= (length assertion) 2) "only 2 arguments allowed")
        (if (?. args :light_hard)
            (color [args.source args.light_hard :kat.nvim
                          [:light :hard]]))
        (if (?. args :light_soft)
            (color [args.source args.light_soft :kat.nwim
                          [:light :soft]]))
        (if (?. args :dark_hard)
            (color [args.source args.dark_hard :kat.nvim] [:dark :hard]))
        (if (?. args :dark_soft)
            (color [args.source args.dark_soft :kat.nwim] [:dark :soft]))
        (set main.configs.background old-background)
        (set main.configs.contrast old-contrast)))

(defn override_all [args] "Override all possible colors with no variation
Takes a table of 2 values
1. 'source' - a string that describes the source this override comes from
  - implies your account name
2. a table of highlight tables
This is generally recommended if your override doesn't have to change for the variations
of kat.nvim"
      (let [old-contrast main.configs.contrast
            old-background main.configs.background
            assertion []]
        (each [k _ (pairs args)]
          (table.insert assertion true))
        (assert (= (length assertion) 2) "only 2 arguments allowed")
        (color* [args.source (. args 1)])
        (set main.configs.background old-background)
        (set main.configs.contrast old-contrast)))

(defn init [] (cre-command :KreativeRenderColor
                           (fn []
                             (file))
                           "Render kat.nvim colorscheme to file"))
