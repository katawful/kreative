(local ucolors (require :kreative.utils.highlight.utils))
(local colors (require :kreative.color))
(local kreative {})

(if (= vim.o.termguicolors true)
  (do
    (tset kreative :normal {:a {:bg colors.kreative.purple.base.color
                                :fg colors.kreative.fg.auto.color
                                :gui :bold}
                            :b {:bg colors.kreative.blue.mix_shadow_bg_more.color
                                :fg colors.kreative.fg.auto.color}
                            :c {:bg colors.kreative.pink.base.color
                                :fg colors.kreative.fg.auto.color}})
    (tset kreative :insert {:a {:bg colors.kreative.blue.base.color
                                :fg colors.kreative.fg.auto.color
                                :gui :bold}
                            :b {:bg colors.kreative.blue.mix_shadow_bg_more.color
                                :fg colors.kreative.fg.auto.color}
                            :c {:bg colors.kreative.blue.brighten.color
                                :fg colors.kreative.fg.auto.color}})
    (tset kreative :visual {:a {:bg colors.kreative.red.base.color
                                :fg colors.kreative.fg.auto.color
                                :gui :bold}
                            :b {:bg colors.kreative.blue.mix_shadow_bg_more.color
                                :fg colors.kreative.fg.auto.color}
                            :c {:bg colors.kreative.purple.base.color
                                :fg colors.kreative.fg.auto.color}})
    (tset kreative :replace {:a {:bg colors.kreative.orange.base.color
                                 :fg colors.kreative.fg.auto.color
                                 :gui :bold}
                             :b {:bg colors.kreative.blue.mix_shadow_bg_more.color
                                 :fg colors.kreative.fg.auto.color}
                             :c {:bg colors.kreative.blue.brighten.color
                                 :fg colors.kreative.fg.auto.color}})

    (tset kreative :command {:a {:bg colors.kreative.green.match_bg.color
                                 :fg colors.kreative.fg.auto.color
                                 :gui :bold}
                             :b {:bg colors.kreative.blue.mix_shadow_bg_more.color
                                 :fg colors.kreative.fg.auto.color}
                             :c {:bg colors.kreative.green.match_bg_less.color
                                 :fg colors.kreative.fg.auto.color}})
    (tset kreative :terminal {:a {:bg colors.kreative.pink.match_bg_less.color
                                  :fg colors.kreative.fg.auto.color
                                  :gui :bold}
                              :b {:bg colors.kreative.blue.mix_shadow_bg_more.color
                                  :fg colors.kreative.fg.auto.color}
                              :c {:bg colors.kreative.red.match_bg.color
                                  :fg colors.kreative.fg.auto.color}})
    (tset kreative :inactive {:a {:bg colors.kreative.fg.sixth.color
                                  :fg colors.kreative.bg.base.color}
                              :b {:bg colors.kreative.fg.sixth.color
                                  :fg colors.kreative.bg.base.color}
                              :c {:bg colors.kreative.fg.shadow.color
                                  :fg colors.kreative.bg.base.color}}))
  (do
    (tset kreative :normal {:a {:bg 6
                                :fg 7
                                :gui :bold}
                            :b {:bg 12
                                :fg 7}
                            :c {:bg 5
                                :fg 7}})
    (tset kreative :insert {:a {:bg 4
                                :fg 7
                                :gui :bold}
                            :b {:bg 12
                                :fg 7}
                            :c {:bg 4
                                :fg 7}})
    (tset kreative :visual {:a {:bg 1
                                :fg 7
                                :gui :bold}
                            :b {:bg 12
                                :fg 7}
                            :c {:bg 6
                                :fg 7}})
    (tset kreative :replace {:a {:bg 3
                                 :fg 7
                                 :gui :bold}
                             :b {:bg 4
                                 :fg 7}
                             :c {:bg 4
                                 :fg 7}})

    (tset kreative :command {:a {:bg 2
                                 :fg 7
                                 :gui :bold}
                             :b {:bg 12
                                 :fg 7}
                             :c {:bg 10
                                 :fg 7}})
    (tset kreative :terminal {:a {:bg 13
                                  :fg 7
                                  :gui :bold}
                              :b {:bg 12
                                  :fg 7}
                              :c {:bg 9
                                  :fg 7}})
    (tset kreative :inactive {:a {:bg 15
                                  :fg 0}
                              :b {:bg 15
                                  :fg 0}
                              :c {:bg 15
                                  :fg 0}})))
kreative
