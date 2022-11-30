(local ucolors (require :kreative.utils.highlight.utils))
(local colors (require :kreative.color))
(local syntax (require :kreative.highlights.syntax))
(local groups (require :kreative.highlights.main))
(local main (require :kreative.main))
(local mainFG ((. (require :kreative.highlights.main) :mainFG)))

(if (and (= main.configs.background :dark) (= main.configs.contrast :soft))
    (do
      (tset mainFG 1 (ucolors.brighten colors.kreative.fg.auto.color 0.8))))

(fn mainFG []
  (var output colors.kreative.fg.auto.color)
  (if (and (= main.configs.background :dark)
           (= main.configs.contrast :soft))
      (do
        (set output (ucolors.brighten colors.kreative.fg.auto.color 0.8))))
  output)

(fn normalMode_c []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.pink.base.color
                 3 7
                 4 5
                 5 ""})
  output)

(fn normalMode_b []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.mix_shadow_bg.color
                 3 7
                 4 12
                 5 ""})
  output)

(fn normalMode_a []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.purple.base.color
                 3 7
                 4 6
                 5 :bold})
  output)

(fn replaceMode_c []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.brighten.color
                 3 7
                 4 4
                 5 ""})
  output)

(fn replaceMode_b []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.mix_shadow_bg.color
                 3 7
                 4 12
                 5 ""})
  output)

(fn replaceMode_a []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.orange.base.color
                 3 7
                 4 3
                 5 :bold})
  output)

(fn visualMode_c []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.purple.base.color
                 3 7
                 4 6
                 5 ""})
  output)

(fn visualMode_b []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.mix_shadow_bg.color
                 3 7
                 4 12
                 5 ""})
  output)

(fn visualMode_a []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.red.base.color
                 3 7
                 4 colors.kreative.red.base.color
                 5 :bold})
  output)

(fn insertMode_c []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.brighten.color
                 3 7
                 4 4
                 5 ""})
  output)

(fn insertMode_b []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.mix_shadow_bg.color
                 3 7
                 4 12
                 5 ""})
  output)

(fn insertMode_a []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.base.color
                 3 7
                 4 4
                 5 :bold})
  output)

(fn terminalMode_c []
  (local output {1 colors.kreative.fg.auto.color
                 2 (ucolors.blend colors.kreative.red.base.color
                                  colors.kreative.bg.base.color 0.8)
                 3 7
                 4 9
                 5 ""})
  output)

(fn terminalMode_b []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.blue.mix_shadow_bg.color
                 3 7
                 4 12
                 5 ""})
  output)

(fn terminalMode_a []
  (local output {1 colors.kreative.fg.auto.color
                 2 (ucolors.blend colors.kreative.pink.base.color
                                  colors.kreative.bg.base.color 0.8)
                 3 7
                 4 5
                 5 :bold})
  output)

(fn inactiveGroup []
  (local output {1 colors.kreative.bg.base.color
                 2 colors.kreative.fg.shadow.color
                 3 0
                 4 15
                 5 ""})
  output)

(fn warningGroup []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.red.match_bg.color
                 3 7
                 4 9
                 5 ""})
  output)

(fn errorGroup []
  (local output {1 colors.kreative.fg.auto.color
                 2 colors.kreative.red.base.color
                 3 7
                 4 1
                 5 ""})
  output)

(fn modifiedC [mode]
  (var output {})
  (match mode
    :normal (do
              (set output {1 colors.kreative.fg.auto.color 2 "" 3 7 4 "" 5 ""}))
    :insert (do
              (set output {1 colors.kreative.fg.auto.color 2 "" 3 7 4 "" 5 ""}))
    :replace (do
               (set output {1 colors.kreative.fg.auto.color 2 "" 3 7 4 "" 5 ""}))
    :visual (do
              (set output {1 colors.kreative.fg.auto.color 2 "" 3 7 4 "" 5 ""}))
    :inactive (do
                (set output {1 colors.kreative.bg.base.color 2 "" 3 0 4 "" 5 ""})))
  output)
