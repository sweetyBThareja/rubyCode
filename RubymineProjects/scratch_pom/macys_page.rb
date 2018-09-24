require_relative 'left_nav_panel'

class MacysHomePage
  include PageObject
  include LeftNavPanel

  button :close_button, :id => 'marketorial-close'
  text_field :search_box, :id => 'mb-j-search-field'


  page_url 'http://m.qa16codemacys.fds.com'

  expected_element :left_nav_button
  expected_title 'Macy\'s - Shop Fashion Clothing & Accessories - Official Site - Macys.com'

  def initialize_page
    wait_until(60, 'page is not loaded properly') {close_button_element.visible?}
    close_button
    sleep 2
    has_expected_element?
  end
end