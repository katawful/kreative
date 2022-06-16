(module kreative.main
        {autoload {message kreative.utils.messages.init
                   options kreative.utils.options.init}
         require-macros [kreative.katcros-fnl.macros.nvim.api.options.macros]})

;;; Main plugin interface

;; fnlfmt: skip
(defn init [opts] "Main plugin interface" ; define some defaults
      (def configs (options.default opts))
      (when vim.g.colors_name
        (vim.cmd "highlight clear"))
      (when (= (vim.fn.exists :syntax_on) 1)
        (vim.cmd "syntax reset"))
      (set configs.contrast (assert (?. opts :contrast) "Please add a contrast to your opts table"))
      (set configs.background vim.o.background)
      (let- :g :colors_name (assert (?. opts :colors_name) "Please add a colors_name to your opts table"))
      (set configs.colors_name opts.colors_name)
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
            ; ((. (require (.. :kreative.exported.main- background "-" contrast))
            ;     :init))
            ; ((. (require (.. :kreative.exported.syntax- background "-"
            ;                  contrast)) :init))
            ; ((. (require :kreative.highlights.terminal) :init))
            ; (require :kreative.utils.export.init) 
            ; ; add integrations
            ; ((. (require :kreative.utils.export.render) :init))
            ; (each [_ v (ipairs configs.integrations)]
            ;   (local output
            ;          (.. :kreative.exported.integrations. v "-" background
            ;              "-" contrast))
            ;   ((. (require output) :init)))
            ; (each [_ v (pairs configs.filetypes)]
            ;   (local output (.. :kreative.exported.filetype. v "-" background
            ;                     "-" contrast))
            ;   ((. (require output) :init))))))
