(module kreative.highlights.integrations.bufferline
        {autoload {ucolors kreative.utils.highlight.utils
                   colors kreative.color}})

(defn init []
      ((. (require :bufferline) :setup)
       {:highlights {:fill {:guifg colors.kreative.pink.base.color
                            :guibg colors.kreative.pink.base.color}
                     :tab {:guifg colors.kreative.fg.auto.color
                           :guibg colors.kreative.purple.base.color}
                     :tab_selected {:guifg colors.kreative.fg.auto.color
                                    :guibg colors.kreative.blue.base.color}
                     :tab_close {:guifg colors.kreative.fg.auto.color
                                 :guibg colors.kreative.purple.base.color
                                 :gui "bold,italic"}
                     :info {:guifg colors.kreative.fg.auto.color
                            :guibg colors.kreative.blue.base.color}
                     :buffer_visible {:guifg colors.kreative.fg.auto.color
                                      :guibg colors.kreative.blue.match_bg.color}
                     :buffer_selected {:guifg colors.kreative.fg.auto.color
                                       :guibg colors.kreative.blue.base.color
                                       :gui "bold,italic"}
                     :close_button {:guifg colors.kreative.fg.auto.color
                                    :guibg colors.kreative.purple.base.color
                                    :gui :bold}
                     :close_button_visible {:guifg colors.kreative.fg.auto.color
                                            :guibg colors.kreative.blue.match_bg.color
                                            :gui :bold}
                     :close_button_selected {:guifg colors.kreative.fg.auto.color
                                             :guibg colors.kreative.blue.base.color
                                             :gui :bold}
                     :modified {:guifg colors.kreative.red.match_bg.color
                                :guibg colors.kreative.purple.base.color}
                     :modified_visible {:guifg colors.kreative.red.match_bg.color
                                        :guibg colors.kreative.blue.match_bg.color}
                     :modified_selected {:guifg colors.kreative.red.match_bg.color
                                         :guibg colors.kreative.blue.base.color}
                     :duplicate_selected {:guifg colors.kreative.fg.auto.color
                                          :guibg colors.kreative.blue.base.color}
                     :duplicate_visible {:guifg colors.kreative.fg.auto.color
                                         :guibg colors.kreative.blue.match_bg.color}
                     :duplicate {:guifg colors.kreative.fg.auto.color
                                 :guibg colors.kreative.purple.base.color}
                     :separator_selected {:guifg colors.kreative.pink.base.color
                                          :guibg colors.kreative.blue.base.color}
                     :separator_visible {:guifg colors.kreative.pink.base.color
                                         :guibg colors.kreative.blue.match_bg.color}
                     :separator {:guifg colors.kreative.pink.base.color
                                 :guibg colors.kreative.purple.base.color}
                     :indicator_selected {:guifg colors.kreative.fg.auto.color
                                          :guibg colors.kreative.blue.base.color}
                     :pick_selected {:guifg colors.kreative.fg.auto.color
                                     :guibg colors.kreative.blue.base.color}
                     :pick_visible {:guifg colors.kreative.fg.auto.color
                                    :guibg colors.kreative.blue.base.color}
                     :pick {:guifg colors.kreative.fg.auto.color
                            :guibg colors.kreative.blue.base.color}
                     :background {:guifg colors.kreative.fg.auto.color
                                  :guibg colors.kreative.purple.base.color}}}))
