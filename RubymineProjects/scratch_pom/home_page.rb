class HomePage
  include PageObject

  button :close_button,                        :id => 'closeButton'
  link   :us_mode,                             :id => 'href_changeCountry'

  page_url "http://www.qa16codemacys.fds.com/"

  expected_element :us_mode

  def initialize_page
    wait_until(60, 'page is not loaded properly') {close_button_element.visible?}
    close_button
    sleep 2
    has_expected_element?
  end

end