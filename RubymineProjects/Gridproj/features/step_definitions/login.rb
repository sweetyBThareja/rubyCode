Given(/^I am on the gmail page$/) do
  visit(GmailPage)
end

When(/^I enter valid (.*) and (.*) on sign in page/) do |email, password|
  @current_page.email = email
  @current_page.next
  @current_page.password = password
  @current_page.sign_in
end

Then(/^I should able to login on gmail$/) do
  on(LoginPage)
end

Given(/^I am on the home page$/) do
  visit(HomePage)
end

When(/^I search with any (.*) keyword$/) do |keyword|
  @current_page.search(keyword)
end

Then(/^I should able to see expected result$/) do
  sleep 5
  on(SearchResultPage)
end
