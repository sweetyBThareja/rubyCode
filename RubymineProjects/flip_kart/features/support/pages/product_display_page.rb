class ProductDisplayPage
  include PageObject
  include PageFactory

  button :add_to_cart,                           :value => 'Add to Cart'
  span   :cart_count,                            :id    => 'item_count_in_cart_top_displayed'

  expected_element :add_to_cart

  def initialize_page
    has_expected_element?
  end

  def add_product_to_bag
    add_to_cart
  end

end