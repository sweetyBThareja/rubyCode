Before do
  if ENV['GRID_HUB']
    caps = Selenium::WebDriver::Remote::Capabilities.new
    caps["browser"] = "chrome"
    #caps["browser_version"] = "45.1"
    #caps["platform"] = "vista"
    @browser = Selenium::WebDriver.for(:remote, :url => 'http://192.168.61.87:4444/wd/hub', :desired_capabilities => caps)
  elsif ENV['CLOUD']
    caps = Selenium::WebDriver::Remote::Capabilities.new
    caps["browser"] = "chrome"
    caps["browser_version"] = "46.0"
    caps["os"] = "Windows"
    caps["os_version"] = "XP"
    caps["browserstack.debug"] = "true"
    caps["name"] = "Testing Selenium webdriver with ruby on BrowserStack"

    @browser = Selenium::WebDriver.for(:remote,
                                       :url => "http://sweety21:TvqxH8NcS2gxzBMnu35U@hub.browserstack.com/wd/hub",
                                       :desired_capabilities => caps)

  else
    browser_name = ENV['BROWSER'].nil? ? 'firefox' : ENV['BROWSER']
    @browser = Selenium::WebDriver.for browser_name.downcase.to_sym

  end
  @log = Logger.new("log/log_#{Time.new.strftime('%y_%m_%d_%H_%M_%S')}.log")
  @browser.manage.timeouts.implicit_wait = 10
  @browser.manage.window.maximize
  @log.debug "Browser is maximized successfully"
end

After do |scenario|
  if scenario.failed?
    screenshot = "screenshot/screenshot_#{Time.new.strftime('%y_%m_%d_%H_%M_%S')}.jpg"
    begin
      @browser.save_screenshot(screenshot)
    rescue => e
      @log.debug e
      @log.debug "Unable to capture screen shot"
    else
      @log.debug "Captured screen shot successfully"
    end
  end
  @log.debug "scenario name: #{scenario.name}"
  @log.debug "#scenario status: #{scenario.status}"
  @browser.close
end