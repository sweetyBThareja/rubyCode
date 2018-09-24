Before do
  raise "Page URL is not specified" if ENV['URL'].nil?
  @log = Logger.new("log/log_#{Time.new.strftime('%y_%m_%d_%H_%M_%S')}.log")
  browser_name = (ENV['BROWSER'].nil? ? 'firefox' : ENV['BROWSER'].downcase)
  @browser = Selenium::WebDriver.for browser_name.to_sym
  @log.debug "Browser is launched successfully"
  @browser.manage.window.maximize
  @log.debug "Browser is maximized successfully"
end

After do |scenario|
  if scenario.failed?
    save_screenshot = "screen_shot/screen_shot_#{Time.new.strftime('%y_%m_%d_%H_%M_%S')}.jpg"
    begin
    @browser.save_screenshot(save_screenshot)
    rescue
      @log.debug "Unable to capture screen shot"
    else
      @log.debug "Saved screen shot"
    end
  end
  @log.debug "Scenario #{scenario.name}"
  @log.debug "Status #{scenario.status}"
  @browser.quit
end