class SignInPage
  include PageObject

  button :create_btn,                       :class => 'sprite-create'

  expected_title 'Sign In - Macy\'s'
  expected_element :create_btn

  def initialize_page
    has_expected_element?
    has_expected_title?
  end
end