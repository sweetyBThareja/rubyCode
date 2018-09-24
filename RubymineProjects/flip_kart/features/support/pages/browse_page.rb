class BrowsePage
  include PageObject
  include PageFactory

  links :product_thumbnails,                   :class => 'pu-image'
  div   :sort_dropdown,                        :id => 'sort-dropdown'

  expected_element :sort_dropdown

  def initialize_page
    has_expected_element?
  end

  def select_random_product
    product_thumbnails_elements.sample.click
  end
end