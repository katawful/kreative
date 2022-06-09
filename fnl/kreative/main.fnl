(module kreative.main
        {autoload {colors kreative.color
                   options kreative.utils.options.init}
         require-macros [kreative.katcros-fnl.macros.nvim.api.options.macros]})

;;; Main plugin interface

;; fnlfmt: skip
(defn init [in-contrast] "Main plugin interface" ; define some defaults
      (options.default)
      (when vim.g.colors_name
        (vim.cmd "highlight clear"))
      (when (= (vim.fn.exists :syntax_on) 1)
        (vim.cmd "syntax reset")) (def contrast in-contrast)
      (def background vim.o.background)
      ; set g:colors_name for hard and soft themes
      (if (= contrast :hard)
          (let- :g :colors_name :kat.nvim)
          (let- :g :colors_name :kat.nwim))
      (if (= vim.g.kat_nvim_dontRender true) 
          ; do the dynamic path
          (do
            ((. (require :kreative.highlights.main) :init))
            ((. (require :kreative.highlights.syntax) :init))
            ((. (require :kreative.highlights.terminal) :init))
            (if (= vim.g.kat_nvim_stupidFeatures true)
                ((. (require :kreative.stupid) :stupidFunction)))
            (require :kreative.utils.export.init)
            ; add integrations
            ((. (require :kreative.utils.export.render) :init))
            (each [_ v (ipairs vim.g.kat_nvim_integrations)]
              (local output (.. :kreative.highlights.integrations. v))
              ((. (require output) :init)))
            (each [_ v (pairs vim.g.kat_nvim_filetype)]
              (local output (.. :kreative.highlights.filetype. v))
              ((. (require output) :init))))
          ; do the prerendered path
          (do
            ((. (require (.. :kreative.exported.main- background "-" contrast))
                :init))
            ((. (require (.. :kreative.exported.syntax- background "-"
                             contrast)) :init))
            ((. (require :kreative.highlights.terminal) :init))
            (if (= vim.g.kat_nvim_stupidFeatures true)
                ((. (require :kreative.stupid) :stupidFunction)))
            (require :kreative.utils.export.init) 
            ; add integrations
            ((. (require :kreative.utils.export.render) :init))
            (each [_ v (ipairs vim.g.kat_nvim_integrations)]
              (local output
                     (.. :kreative.exported.integrations. v "-" background
                         "-" contrast))
              ((. (require output) :init)))
            (each [_ v (pairs vim.g.kat_nvim_filetype)]
              (local output (.. :kreative.exported.filetype. v "-" background
                                "-" contrast))
              ((. (require output) :init))))))
