module Aaa
  include PageObject

  links      :left_category,                     :class => 'link fk-display-block'
  list_items :left_category_new,                :class => 'c-item'


  def select_left_category
    left_subcategories.sample.click
  end

  private

  def left_subcategories
    left_category_elements.reject{|left| left.text == "See All"}
  end
end