module LeftNavPanel
  include PageObject

    button :left_nav_button,                      :id => 'mb-j-nav-button'
    list_items :menu_items,                       :class => 'm-j-cm-element'

    def select_specific_category(category)
      left_nav_button
      menu_items_elements.find{|e| e.text == category}.click
    end
end