class HomePage
include PageObject
include HeaderPanel
include CategoryMenuPanel
include Aaa
include PageFactory

  page_url 'http://www.flipkart.com/'

 expected_title %r"Online Shopping India Mobile"
 expected_element :flip_kart_logo

  def initialize_page
  has_expected_title?
  has_expected_element?
  end
end