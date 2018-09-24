class HomePage
  include PageObject

  text_field :search_box,                         :name => 'q'
  button :search_button,                          :name => 'btnG'

  page_url "http://www.google.com"

  expected_element :search_box

  def initialize_page
    has_expected_element?
  end

  def search(keyword)
    self.search_box = keyword
    search_button
  end
end