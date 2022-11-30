(module kreative.main
        {autoload {message kreative.utils.messages.init
                   options kreative.utils.options.init
                   colors kreative.color}
         require-macros [katcros-fnl.macros.nvim.api.options.macros
                         katcros-fnl.macros.nvim.api.utils.macros]})

;;; Main plugin interface

;; fnlfmt: skip
(defn init [opts] "Main plugin interface" ; define some defaults
      (def configs (options.default opts))
      (when vim.g.colors_name
        (do-ex highlight "clear"))
      (when (= (vim.fn.exists :syntax_on) 1)
        (do-ex syntax "reset"))
      (set configs.contrast (assert (?. opts :contrast) "Please add a contrast to your opts table"))
      (set configs.background vim.o.background)
      (set-var :g :colors_name (assert (?. opts :colors_name) "Please add a colors_name to your opts table"))
      (set configs.colors_name opts.colors_name)
      (colors.update)
      (if (= configs.render true)
          ; do the dynamic path
          (do
            ((. (require :kreative.highlights.main) :init))
            ((. (require :kreative.highlights.syntax) :init))
            ((. (require :kreative.highlights.terminal) :init))
            (require :kreative.utils.export.init)
            ; add integrations
            ((. (require :kreative.utils.export.render) :init))
            (each [_ v (ipairs configs.integrations)]
              (local output (.. :kreative.highlights.integrations. v))
              ((. (require output) :init)))
            (each [_ v (pairs configs.filetypes)]
              (local output (.. :kreative.highlights.filetype. v))
              ((. (require output) :init))))
          ; do the prerendered path
          (do
            (message.error$ (message.<-table :main :render-disable)))))
