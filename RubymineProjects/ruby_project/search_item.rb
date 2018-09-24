require 'selenium-webdriver'
require 'rubygems'
require 'rspec'
require 'pry'

begin
@driver = Selenium::WebDriver.for :chrome
@driver.manage.window.maximize
@driver.manage.timeouts.implicit_wait = 10
sleep 10
@driver.get "http://macys.com"
@driver.manage.timeouts.implicit_wait = 20
#@driver.find_element(:id => 'closeButton').click
@driver.find_element(:id => 'globalSearchInputField').send_keys("jeans")
@driver.find_element(:id => 'subnavSearchSubmit').click
wait = Selenium::WebDriver::Wait.new(:timeout => 20, :message => "Page is not loaded")
wait.until{@driver.title.include?("jeans - Shop for and Buy")}
#@driver.title.should include("jeans - Shop for and Buy"), "ERROR - ENV: Search page is not displayed"
sleep 5
prod_elements = @driver.find_elements(:class => 'productThumbnail')
p prod_elements
sleep 10
prod_ids = prod_elements.map{|e| e.attribute('id')} rescue binding.pry
p prod_ids

ensure
@driver.quit
end