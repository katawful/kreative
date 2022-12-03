(module kreative.main
        {autoload {message kreative.utils.messages.init
                   options kreative.utils.options.init
                   override kreative.utils.override.init
                   json kreative.utils.json.init
                   write kreative.utils.json.write
                   read kreative.utils.json.read
                   run kreative.utils.highlight.run
                   colors kreative.color}
         require-macros [katcros-fnl.macros.nvim.api.options.macros
                         katcros-fnl.macros.nvim.api.utils.macros]})

;;; Main plugin interface

;; fnlfmt: skip
(defn init [opts] "Main plugin interface" ; define some defaults
      (def configs (options.default opts))
      (set colors.kreative {})
      (when vim.g.colors_name
        (do-ex highlight "clear"))
      (when (= (vim.fn.exists :syntax_on) 1)
        (do-ex syntax "reset"))
      (set configs.contrast (assert (?. opts :contrast) "Please add a contrast to your opts table"))
      (set configs.background vim.o.background)
      (set-var :g :colors_name (assert (?. opts :colors_name) "Please add a colors_name to your opts table"))
      (set configs.colors_name opts.colors_name)
      (colors.update)
      (let [rendered-length (do (var i 0)
                              (let [files (override.main-files)]
                                (when files
                                  (each [k _ (pairs (override.main-files) :until (> i 0))]
                                    (set i (+ i 1)))))
                              i)
            matcher (string.format "%s-%s.json" configs.colors_name background)
            integrations (let [output {}]
                           (each [_ v (pairs configs.integrations)]
                             (tset output (.. "integrations." v) true))
                           (each [_ v (pairs configs.filetypes)]
                             (tset output (.. "filetype." v) true))
                           output)]
        (if (json.exists? :main)
            (run.highlight$<-table (read.file! :main))
            (do
              ((. (require :kreative.highlights.main) :init))
              (when opts.render
                (write.file! :main (json.encode (json.file-parse :main))))))
        (if (json.exists? :syntax)
            (run.highlight$<-table (read.file! :syntax))
            (do
              ((. (require :kreative.highlights.syntax) :init))
              (when opts.render
                (write.file! :syntax (json.encode (json.file-parse :syntax))))))
        ;; Very large increase in startup time
        (if (> rendered-length 0)
          ;; If there's json files found:
          ;; go through integrations and load the file if it was found
            (each [key _ (pairs integrations)]
              (if (json.exists? key)
                (run.highlight$<-table (read.file! key))
                (do
                  ((. (require (.. :kreative.highlights. key)) :init))
                  (when opts.render
                    (write.file! key (json.encode (json.file-parse key)))))))
          ;; full fallback
            (do
              (each [key _ (pairs integrations)]
                ((. (require (.. :kreative.highlights. key)) :init))
                (when opts.render
                  (write.file! key (json.encode (json.file-parse key)))))))
        ;; From here to there doesn't need to be done until after any other loading
        ;; TODO: fix loading so for somethings
        ;; from here
        ((. (require :kreative.highlights.terminal) :init))
        (require :kreative.utils.export.init)
        ((. (require :kreative.utils.export.render) :init))))
        ;; to there
        ;; Load in overrides from end user
        ; (let [has-overrides (override.files)]
        ;   (when has-overrides
        ;     (each [file _ (pairs has-overrides)]
        ;       (when (string.find file matcher 1 true)
        ;         (run.highlight$<-table (read.full-file! file))))))))
