(module kreative.utils.message.init)

;;; Generically message handling

;;; Messages are currently split up into multiple functions and-
;;; error codes are declared at the time of usage. This compounds-
;;; a lot of overall problems; code duplication, potential overloading-
;;; of error codes, etc... Hopefully this module will clear up these issues

;;; Private values

;; Table -- a table of notifications to connect messages to more logically
;; -- general layout:
;; --> {:module-of-notification {:type {:number val :message val}}}
;; %module-of-error -- simply just the truncated module name i.e. utils.message.init
;; %type -- a shorthand description of the notification at hand
;; %number -- a number for the index, so it can be looked up like Vim errors
;; %message -- the message itself, can be an unformatted string

;; fnlfmt: skip
(defonce- notifications
     {
      :main {
             :render-disable {:number 3
                              :type :error
                              :message "Pre-compiled color files are not supported atm, please set 'render' to true in your colorscheme file created for Kreative"}}
      :utils.export.render {
                            :compilation-dev {:number 1
                                              :type :warn
                                              :message "Compilation is a development feature, please consider setting \"vim.g.kat_nvim_compile_enable\" to false"}}
      :utils.export.init {
                          :not-colorscheme {:number 1
                                            :type :error
                                            :message "Not a theme made with Kreative, theme won't compile"}
                          :invalid-arg {:number 2
                                        :type :error
                                        :message "'%s' is not a valid argument for :KreativeGenTermTheme, check supported terminals or enclose in quotes if nvim-0.7 is not available"}
                          :term-theme-generated {:number 1
                                                 :type :info
                                                 :message "%s color file generated at cwd using %s colorscheme with %s background"}}})

;; FN -- wraps vim.notify for messaging needs
;; @log-level -- string of the log level desired
;; @message -- the message to output
(defn- notify$ [log-level message] "Wrapper for vim.notify"
       (match log-level
         :error (vim.notify message vim.log.levels.ERROR)
         :warn (vim.notify message vim.log.levels.WARN)
         :info (vim.notify message vim.log.levels.INFO)
         :debug (vim.notify message vim.log.levels.DEBUG)
         :trace (vim.notify message vim.log.levels.TRACE)))

;;; Public values

;; FN -- group of functions to output messages needed
;; @message -- can be any string message, ideally uses '<-table'
(defn error$ [message] "Output error message" (notify$ :error message))

(defn warn$ [message] "Output warn message" (notify$ :warn message))

(defn info$ [message] "Output info message" (notify$ :info message))

(defn debug$ [message] "Output debug message" (notify$ :debug message))

(defn trace$ [message] "Output trace message" (notify$ :trace message))

;; FN -- constructs message to be output
;; @from-module -- what module the message is coming from
;; @message-type -- what type of message it is
(defn <-table [from-module message-type]
      "Constructs message based on the internal table"
      (let [message-table (. (. notifications from-module) message-type)
            notify-type (match message-table.type
                          :error :E
                          :warn :W
                          :info :I
                          :debug :D
                          :trace :T)
            output (string.format "Kreative %s%s: %s" notify-type
                                  message-table.number message-table.message)]
        output))
