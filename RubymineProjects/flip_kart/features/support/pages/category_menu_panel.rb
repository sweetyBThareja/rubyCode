module CategoryMenuPanel
  include PageObject

  div   :fob_menu_container,                    :class => 'menu-header-content'
  links :fobs,                                  :class => 'menu-text'
  list_items   :flyout_links,                   :class => 'menu-item'

  def get_fob_categories
    fob_elements.map(&:text)
  end

  def select_category(category)
    fob_elements.find{|cat| cat.text == category}.click
  end

  def select_random_category
    fob_elements.sample.click
  end

  def select_random_subcategory
    sleep 5
    @browser.link(text: 'Sarees').click
    #flyout_elements.sample.click
  end

    def open_category_menu(category_name)
    category = fob_elements.find { |e| e.text == category_name}
    category.parent.span(class: 'menu-arrow').click
  end

  private

  def fob_elements
    fobs_elements.reject{|fob| fob.text == "OFFERS ZONE"}
  end

  def flyout_elements
    sleep 5
    flyout_links_elements.find_all{|link| link.visible?}.map(&:link_element)
  end
end