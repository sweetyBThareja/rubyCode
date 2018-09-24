class CreateProfilePage
  include PageObject
  include DataMagic

  text_field  :first_name,                       :id => 'firstName'
  text_field  :last_name,                        :id => 'lastName'
  text_field  :address,                          :id => 'addressLine1'
  text_field  :city,                             :id => 'city'
  select_list :state,                            :id => 'state'
  text_field  :zip_code,                         :id => 'zipcode'
  select_list :month,                            :id => 'month'
  select_list :date,                             :id => 'date'
  select_list :year,                             :id => 'year'
  select_list :gender,                           :id => 'gender'
  text_field  :email,                            :id => 'email'
  text_field  :verify_email,                     :id => 'createConfirmEmail'
  text_field  :password,                         :id => 'password'
  text_field  :verify_password,                  :id => 'confirmPassword'
  select_list :security_ques,                    :id => 'SecurityQna'
  text_field :security_ans,                      :id => 'securityAns'
  radio      :may_be_email,                     :id => 'emailSalesEventsLater'
  button     :sign_up,                           :id => 'createProfileBtn'

  expected_element :first_name
  expected_title 'My Account - Create Profile - Macy\'s'

  def initialize_page
    has_expected_element?
  end

  def create_profile(data)
    DataMagic.yml_directory = '.'
    DataMagic.load('data.yml')
    new_data = data_for(:profile)
    data = new_data.merge data
    populate_page_with data
    self.verify_email = new_data['email']
    #sign_up
  end
end