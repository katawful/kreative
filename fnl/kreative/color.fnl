(module kreative.color
        {autoload {ucolors kreative.utils.highlight.utils
                   main kreative.main}})

;;; This stores and exports all needed colors as functions

;; private values that hold the colors we want
;; only these need to be changed
;; foreground and background can change, simply set the light and dark you want

;; FN -- load in colors from kreative_colors global table
;; -- nil checked with error reportind
;; @opts -- the colors to load from
(defn- load-colors [opts]
  ; add sub colors that match the colors designed for kreative
  ; could potentially be expanded upon, doesn't need to be strict
  (let [pink-sub (assert (or (?. opts :pink)
                             (?. opts :auxiliary))
                         "Please add a color to table key: 'pink' or 'auxiliary'")
        orange-sub (assert (or (?. opts :orange)
                               (?. opts :yellow))
                           "Please add a color to table key: 'orange' or 'yellow'")]
    {
     :light-fore-back (assert (?. opts :light_fore_back) "Please add a color value to table key: 'light_fore_back'")
     :dark-fore-back (assert (?. opts :dark_fore_back) "Please add a color value to table key: 'dark_fore_back'")

     :red-primary (assert (?. opts :red) "Please add a color value to table key: 'red'")
     :green-primary (assert (?. opts :green) "Please add a color value to table key: 'green'")
     :orange-primary orange-sub
     :pink-primary pink-sub
     :purple-primary (assert (?. opts :purple) "Please add a color value to table key: 'purple'")
     :blue-primary (assert (?. opts :blue) "Please add a color value to table key: 'blue'")}))

;;; There values need to be mutable
;;; We could achieve this with a function, but Lua functions aren't the fastest
(var light-fore-back "")
(var dark-fore-back "")
(var red-primary "")
(var green-primary "")
(var orange-primary "")
(var pink-primary "")
(var purple-primary "")
(var blue-primary "")
(defn init-colors []
  (set light-fore-back (. (load-colors _G.kreative_colors) :light-fore-back))
  (set dark-fore-back (. (load-colors _G.kreative_colors) :dark-fore-back))
  (set red-primary (. (load-colors _G.kreative_colors) :red-primary))
  (set green-primary (. (load-colors _G.kreative_colors) :green-primary))
  (set orange-primary (. (load-colors _G.kreative_colors) :orange-primary))
  (set pink-primary (. (load-colors _G.kreative_colors) :pink-primary))
  (set purple-primary (. (load-colors _G.kreative_colors) :purple-primary))
  (set blue-primary (. (load-colors _G.kreative_colors) :blue-primary)))

;; FN -- Define a table of primary colors
(defn- def-normal-colors [] "A table of regular color"
       (let [output {:red red-primary
                     :green green-primary
                     :orange orange-primary
                     :pink pink-primary
                     :purple purple-primary
                     :blue blue-primary}]
         output))

;; FN -- Define a table of background colors based on the current theme
(defn- def-back-colors [] "A table of background colors"
       (let [back (if (= vim.o.background :dark)
                      (if (= main.contrast :soft)
                          [(ucolors.brighten dark-fore-back 0.1)
                           dark-fore-back
                           (ucolors.brighten dark-fore-back 0.3)
                           (ucolors.brighten dark-fore-back 0.5)
                           (ucolors.brighten dark-fore-back 0.7)
                           (ucolors.brighten dark-fore-back 0.9)]
                          (or (= main.contrast :hard) (= main.contrast nil))
                          [dark-fore-back
                           (ucolors.brighten dark-fore-back 0.1)
                           (ucolors.brighten dark-fore-back 0.3)
                           (ucolors.brighten dark-fore-back 0.5)
                           (ucolors.brighten dark-fore-back 0.7)
                           (ucolors.brighten dark-fore-back 0.9)])
                      (= vim.o.background :light)
                      (if (= main.contrast :soft)
                          [(-> light-fore-back
                               (ucolors.darken 0.1)
                               (ucolors.saturation -0.5))
                           light-fore-back
                           (-> light-fore-back
                               (ucolors.darken 0.3)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.5)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.7)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.9)
                               (ucolors.saturation -0.5))]
                          (or (= main.contrast :hard) (= main.contrast nil))
                          [light-fore-back
                           (-> light-fore-back
                               (ucolors.darken 0.1)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.3)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.5)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.7)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.9)
                               (ucolors.saturation -0.5))]))]
         back))

;; FN -- Define a table of background colors based on the current theme
(defn- def-fore-colors [] "A table of foreground colors"
       (let [fore (if (= vim.o.background :dark)
                      (if (= main.contrast :soft)
                          [(-> light-fore-back
                               (ucolors.darken 0.1)
                               (ucolors.saturation -0.5))
                           light-fore-back
                           (-> light-fore-back
                               (ucolors.darken 0.3)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.5)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.7)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.9)
                               (ucolors.saturation -0.5))]
                          (or (= main.contrast :hard) (= main.contrast nil))
                          [light-fore-back
                           (-> light-fore-back
                               (ucolors.darken 0.1)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.3)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.5)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.7)
                               (ucolors.saturation -0.5))
                           (-> light-fore-back
                               (ucolors.darken 0.9)
                               (ucolors.saturation -0.5))])
                      (= vim.o.background :light)
                      (if (= main.contrast :soft)
                          [(ucolors.brighten dark-fore-back 0.1)
                           dark-fore-back
                           (ucolors.brighten dark-fore-back 0.3)
                           (ucolors.brighten dark-fore-back 0.5)
                           (ucolors.brighten dark-fore-back 0.7)
                           (ucolors.brighten dark-fore-back 0.9)]
                          (or (= main.contrast :hard) (= main.contrast nil))
                          [dark-fore-back
                           (ucolors.brighten dark-fore-back 0.1)
                           (ucolors.brighten dark-fore-back 0.3)
                           (ucolors.brighten dark-fore-back 0.5)
                           (ucolors.brighten dark-fore-back 0.7)
                           (ucolors.brighten dark-fore-back 0.9)]))]
         fore))

;; FN -- specify which color
(defn init [table] (match table
                     :normalColors (do
                                     (def-normal-colors))
                     :background (do
                                   (def-back-colors))
                     :foreground (do
                                   (def-fore-colors))))

;; Call specific color tables
(defn normal-colors [] (def-normal-colors))

(defn background [] (def-back-colors))

(defn foreground [] (def-fore-colors))
