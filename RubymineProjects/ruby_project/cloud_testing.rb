#cross browser testing tools for selenium webdriver

require 'rubygems'
require 'selenium-webdriver'


caps = Selenium::WebDriver::Remote::Capabilities.new
caps["browser"] = "IE"
caps["browser_version"] = "7.0"
caps["os"] = "Windows"
caps["os_version"] = "XP"
caps["browserstack.debug"] = "true"
caps["name"] = "Testing Selenium 2 with Ruby on BrowserStack"

driver = Selenium::WebDriver.for(:remote,
                                 :url => "http://sweety21:TvqxH8NcS2gxzBMnu35U@hub.browserstack.com/wd/hub",
                                 :desired_capabilities => caps)
driver.navigate.to "http://www.google.com/ncr"
element = driver.find_element(:name, 'q')
element.send_keys "BrowserStack"
element.submit
puts driver.title
driver.quit

# Please visit http://selenium-python.readthedocs.org/en/latest/index.html for detailed installation and instructions

##################################################################################################

caps = Selenium::WebDriver::Remote::Capabilities.new
caps["name"] = "Selenium Test Example a"
caps["build"] = "1.0"
caps["browser_api_name"] = "IE10"
caps["os_api_name"] = "Win7x64-C2"
caps["screen_resolution"] = "1024x768"
caps["record_video"] = "true"
caps["record_network"] = "true"

driver = Selenium::WebDriver.for(:remote,
                                 :url => "http://swtbarnwal%40gmail.com:u291bfb92a0d3b48@hub.crossbrowsertesting.com:80/wd/hub",
                                 :desired_capabilities => caps)

#maximize the window - DESKTOPS ONLY
#driver.navigate.to "http://crossbrowsertesting.github.io/selenium_example_page.html"
#driver.manage.window.maximize
puts driver.title

driver.quit