class SearchPage
  include PageObject

  span :search_result,                        :id => 'SearchKeyword'
  ul   :products_id,                          :id => 'thumbnails'
  list_items :product_list,                   :class => 'productThumbnail'

  expected_element :search_result

  def initialize_page
    has_expected_element?
  end

  def get_product_ids
    product_list_elements.map{|p_e| p_e.attribute('id') }
  end
end