class GmailPage
 include PageObject

 text_field :email,                               :id => 'Email'
 button     :next,                                :css => '.rc-button.rc-button-submit'
 text_field  :password,                           :id => 'Passwd'
 button      :sign_in,                            :id => 'signIn'

  page_url "https://www.gmail.com"

  expected_element :email

  def initialize_page
  has_expected_element?
  end

end