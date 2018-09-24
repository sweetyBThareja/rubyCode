Given(/^I visit the website$/) do
  visit(HomePage)
end

When(/^I enter valid keyword in search box$/) do
  @current_page.search_box = "abc"
end

And(/^I select search button$/) do
  @current_page.search_button
end

Then(/^I should see search result$/) do
  puts "Failed"
end