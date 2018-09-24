Given(/^I visit website as "(.*?)" user$/) do |user_type|
  visit(HomePage)
  case user_type
    when 'guest'
      on(HomePage)
    when 'register'
      on(HomePage).go_to_login
      @current_page.login("sweety511302@gmail.com", "redrose1")
      @current_page.wait_until(20, "Login dialog is still displayed") {!@current_page.login_signup_dialog_element.visible?}
    when 'new user'
      on(HomePage).go_to_signup
      @current_page.signup("8886034000", "623614", "thareja1124")
  end
end

When(/^I add random product to bag$/) do
   categories = @current_page.get_fob_categories
   @current_page.open_category_menu("WOMEN")
   @current_page.select_random_subcategory
   on(CategorySplashPage).select_left_category
   on(BrowsePage).select_random_product
end


Then(/^I should see the product in bag$/) do
  old_product_count = on(ProductDisplayPage).cart_count.to_i
  @current_page.add_to_cart
  sleep 5
  new_product_count = @current_page.cart_count.to_i
  new_product_count.should eql(old_product_count + 1), "Product is not added to bag"
  sleep 10
end

And(/^I navigate to my account page from home page$/) do
  @current_page.goto_my_account
end

Then(/^I should see my account page$/) do
  on(MyAccountPage)
end

When(/^I enter all valid details on my account page$/) do
  on(MyAccountPage).personal_details
end