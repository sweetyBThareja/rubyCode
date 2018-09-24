class HomePage
  include PageObject

  page_url ENV['URL']

 #text_field  :search_box,                   :name => 'q'
 button      :search_button,                :class => 'ls'
 text_field  :search_box,                   :id => 'globalSearchInputField'
 button      :search_icon,                  :id => 'subnavSearchSubmit'

  expected_element :search_box
  #expected_title "Google"

  def initialize_page
    has_expected_element?
    #has_expected_title?
  end

  def search(keyword)
    self.search_box = keyword
    search_icon
  end
end