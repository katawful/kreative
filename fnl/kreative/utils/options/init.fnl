(module kreative.utils.options.init
        {autoload {main kreative.main}
         require-macros [katcros-fnl.macros.nvim.api.options.macros]})

;;; Module for option management

;; FN -- set global values to default by force
(defn default* [] "Set all plugin options to default by force"
      (let- :g :kat_nvim_commentStyle :italic)
      (let- :g :kat_nvim_stupidFeatures false)
      (let- :g :kat_nvim_filetypes [:vim :vimwiki :markdown])
      (let- :g :kat_nvim_integrations
            [:treesitter
             :lsp
             :ts_rainbow
             :indent_blankline
             :startify
             :coc
             :cmp
             :fugitive]) (let- :g :kat_nvim_dontRender false)
      (let- :g :kat_nvim_compile_enable false))

;; FN -- check global variables and set to default values if needed
(defn default [opts] "Set options table from color file to default and output"
      (let [output {}]
        (if (?. opts :integrations)
            (set output.integrations opts.integrations)
            (set output.integrations
                 [:treesitter
                  :lsp
                  :ts_rainbow
                  :indent_blankline
                  :startify
                  :coc
                  :cmp
                  :gitsigns
                  :fugitive]))
        (if (?. opts :filetypes)
            (set output.filetypes opts.filetypes)
            (set output.filetypes [:vim :vimwiki :markdown]))
        (if (?. opts :comment_style)
            (set output.comment_style opts.comment_style)
            (set output.comment_style [:italic]))
        (if (?. opts :render)
            (set output.render opts.render)
            (set output.render true))
        (set output.version (if (= (vim.fn.has :nvim-0.7) 0) :0.6 :0.7))
        output))
