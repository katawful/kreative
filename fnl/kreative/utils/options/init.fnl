(module kreative.utils.options.init
        {autoload {main kreative.main}
         require-macros [katcros-fnl.macros.nvim.api.options.macros]})

;;; Module for option management

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
            (set output.render false))
        (set output.version :0.8)
        output))
