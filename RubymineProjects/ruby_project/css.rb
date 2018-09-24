require 'selenium-webdriver'

def fb_login
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
  @driver.manage.timeouts.implicit_wait = 20
  @driver.get "https://www.facebook.com/"
  @driver.find_element(css: '#email').send_keys("sweety511303@yahoo.com")
  @driver.find_element(css: '#pass').send_keys("redrose1")
  @driver.find_element(css: '#loginbutton>input').click
end

def fb_signup
  ele = @driver.find_element(css: '#day')
  my_options = Selenium::WebDriver::Support::Select.new(ele)
  my_options.select_by(:index, 5)
  all_option = my_options.options
  all_option.each {|i| print i.text}

end

def gmail_login
#@driver.find_element(css: '#gmail-sign-in').click
  @driver.find_element(css: '#Email').send_keys("sweety511302")
  @driver.find_element(css: '.rc-button.rc-button-submit').click #multiple class 'rc-button rc-button-submit'
  @driver.find_element(css: '#Passwd').send_keys("redrose12")

end

begin
  @driver = Selenium::WebDriver.for :chrome
  @driver.manage.window.maximize
  @driver.manage.timeouts.implicit_wait = 20
#@driver.get "https://www.facebook.com/"
  @driver.get "http://www.gmail.com/"

#fb_login
#fb_signup
  gmail_login
ensure
#@driver.close
end