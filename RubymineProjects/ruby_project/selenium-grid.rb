require 'selenium-webdriver'
require 'rubygems'

#caps = Selenium::WebDriver::Remote::Capabilities.new
#caps["browser"] = "chrome"
#caps["browser_verson"] = "45.1"
#caps["platform"] = "vista"

caps = Selenium::WebDriver::Remote::Capabilities.chrome

#driver = Selenium::WebDriver.for(:remote, :url => "http://192.168.61.87:4444/wd/hub", :desired_capabilities => caps)
driver = Selenium::WebDriver.for(:remote, :url => "http://192.168.1.4:4444/wd/hub", :desired_capabilities => caps)

driver.get "http://google.com"
#sleep 10
p driver.title
driver.manage.timeouts.implicit_wait = 10
driver.find_element(:name => 'q').send_keys("selenium")

driver.quit