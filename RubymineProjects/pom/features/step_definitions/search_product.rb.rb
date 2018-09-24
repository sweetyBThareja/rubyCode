Given(/^I am on the home page$/) do
  visit(HomePage)
end

When(/^I select random product id$/) do
  p `cd`
  @prod_id = YAML.load(File.open('config/product.yml')).sample
  @product_name = Product.with_prod_id(@prod_id).first.prod_name
end

And(/^I search with product name for given product id$/) do
  @current_page.search(@product_name)
end

Then(/^I should able to see the search result page$/) do
  @product_name.downcase.should include(on(SearchPage).search_result), "Search page is not displayed"
  @current_page.get_product_ids.should include(@prod_id.to_s), "Product #{@prod_id} is not displayed on search result page"
end