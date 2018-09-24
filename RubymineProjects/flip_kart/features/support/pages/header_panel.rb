module HeaderPanel
  include PageObject

  img        :flip_kart_logo,             :class => 'logo-img retina-img'
  link       :go_to_signup,               :class => 'signup-link'
  link       :go_to_login,                :class => 'no-border'
  button     :login_button,               :class => 'submit-btn'
  button     :signup_button,              :class => 'continue-signup btn'
  text_field :login_email,                :class => 'fk-input login-form-input user-email'
  text_field :login_password,             :class => 'fk-input login-form-input user-pwd'
  div        :login_signup_dialog,        :id   => 'login-signup-newDialog'
  text_field :mobile_field,               :class => 'fk-input signup-form-input user-email num-ten'
  text_field :user_otp,                   :class => 'fk-input signup-form-input user-otp num-six'
  ul         :greeting,                   :class => 'account-dropdown'
  li         :greeting_link,              :class => 'no-border greeting-link'


  def login(email, password)
    self.login_email = email
    self.login_password = password
    login_button
    #wait_until {self.login_signup_dialog_element.visible.should be_false}
  end

  def signup(mobile_num, otp, password)
   self.login_signup_dialog_element.visible?
   self.mobile_field = mobile_num
   signup_button
   sleep 5
   self.user_otp = otp
   self.password = password
   signup_button
  end

  def goto_my_account
    self.greeting_link_element.click
    self.greeting.list_elements.find_element{|option| option.text == "Account"}.click
  end

end