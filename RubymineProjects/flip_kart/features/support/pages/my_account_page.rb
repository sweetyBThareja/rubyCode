class MyAccountPage
  include PageObject
  include HeaderPanel

  text_field  :first_name,                     :id => 'first_name'
  text_field  :last_name,                      :id => 'last_name'
  text_field  :land_line,                      :id => 'landline'
  select_list :gender,                         :id => 'gender'
  button      :submit,                         :class => 'btn btn-blue'

  expected_title "Flipkart.com: Account Settings"

  def initialize_page
    has_expected_title?
  end

  def personal_details(data = {})
    information = TestData.instance.information.data.marge(data)
    populate_page_with information
    sleep 10
  end
end