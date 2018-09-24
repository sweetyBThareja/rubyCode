require 'selenium-webdriver'

begin
@driver = Selenium::WebDriver.for :chrome
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



begin
  a = []
  a[2^100000000000000]
    #abcd
    #a = 20/0
rescue NameError
  puts 'rescue NameError'
rescue ZeroDivisionError => e
  puts e
  puts 'rescue ZeroDivisionError'
rescue => e
  puts e
  puts e.class
  puts e.message
  #puts e.backtrace #backtrace method, which displays an array of strings showing the filenames and line numbers where the error occurred
  puts 'all errors rescued'
else
  puts 'no error'
ensure
  puts 'in ensure'
end

