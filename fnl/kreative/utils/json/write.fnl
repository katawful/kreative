(module kreative.utils.json.write
        {autoload {json kreative.utils.json.init
                   main kreative.main
                   color-table kreative.color}
         require-macros [katcros-fnl.macros.nvim.api.utils.macros]})

;;; Handles writing json to file

(defonce header (string.format "%s" json.path))

(defn file! [file source-json] "Writes a json file to std
@file -- a file name with no path
@source-json -- a valid json object"
      (do-viml system (string.format "mkdir -p %s" header))
      (json.->file! (string.format "%s/%s-%s-%s.json" json.path
                                   main.configs.colors_name file
                                   main.configs.background)
                    source-json))

(defn override-file! [source-json override colors_name]
      "Writes a json file to std for overriding
@source-json -- a valid json object
@override -- the name of the override
@colors_name -- name of colorscheme"
      (do-viml system (string.format "mkdir -p %s" header))
      (do-viml system (string.format "mkdir -p %s" (.. header override)))
      (json.->file! (string.format "%s%s/%s-%s.json" header override
                                   colors_name main.configs.background)
                    source-json))

(defn colors [dir] "Writes colors table to file for much faster startup"
      ; (do-ex colorscheme :kat.nvim)
      (let [colors [[:light :soft :kat.nwim]
                    [:light :hard :kat.nvim]
                    [:dark :soft :kat.nwim]
                    [:dark :hard :kat.nvim]]]
        (set main.configs.background "")
        (set main.configs.contrast "")
        (set main.configs.colors_name "")
        (each [_ v (pairs colors)]
          (set main.configs.background (. v 1))
          (set main.configs.contrast (. v 2))
          (set main.configs.colors_name (. v 3))
          (json.->file! (string.format "%s/colors-%s-%s.json" dir (. v 3)
                                       (. v 1))
                        (json.encode-simple (color-table.output))))
        (set main.configs.background old-background)
        (set main.configs.contrast old-contrast)
        (set main.configs.colors_name old-colors-name)))

(defn colors! [] "Read colors table from file for much faster startup"
      (do-viml system (string.format "mkdir -p %s" header))
      ; (print (vim.inspect color-table.kreative)))
      (json.->file! (string.format "%s/%s-colors-%s.json" json.path
                                   main.configs.colors_name main.configs.background)
                    (json.encode-simple (color-table.output))))
