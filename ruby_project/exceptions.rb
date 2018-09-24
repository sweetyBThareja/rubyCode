require 'selenium-webdriver'

begin
@driver = Selenium::WebDriver.for :firefox
#@driver.get("http://www.google.com")
#@driver.manage.window.maximize
#
#@driver.find_element(:name => "q").send_keys("selenium")
#
#@driver.find_element(:class => "ls").click
#rescue => e
#  @driver.save_screenshot("wrong_id_#{Time.now}.jpg")
#  raise e
#ensure
#  @driver.quit
end

@driver.get("https://accounts.google.com/SignUp?service=mail&continue=http%3A%2F%2Fmail.google.com%2Fmail%2F%3Fpc%3Dtopnav-about-en")
@driver.manage.window.maximize
#p @driver.find_element(:id => "FirstName").attribute('class')
p @driver.find_element(:css => ".firstname").attribute('class')
#textbox inside label
@driver.find_element(:css => '.firstname > input').send_keys("sadfdf")
p @driver.find_element(:css => '.firstname > input').attribute('type')
#@driver.find_element(:xpath => "//label[@id = 'firstname-label']/input").send_keys("wererr")
@driver.quit


