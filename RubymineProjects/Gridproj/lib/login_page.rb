class LoginPage
  include PageObject

  div :gmail_logo,                            :css => '.akh.J-J5-Ji.J-JN-I'

  expected_element :gmail_logo

  def initialize_page
    has_expected_element?
  end
end