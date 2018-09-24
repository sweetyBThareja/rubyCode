require 'selenium-webdriver'
require 'spreadsheet'

def goto_ruby_ques
@browser.get("http://localhost/questions_bank/index.php")
ele = @browser.find_elements(:id => 'navlink')
ele.find{|e| e.text == 'Ruby'}.click
end

def select_dropdown
  @browser.get 'http://www1.macys.com/internationalContext/index.ognc'
  wait = Selenium::WebDriver::Wait.new(:timeout => 10, :message => 'Page has not loaded properly')
  wait.until {@browser.title.include?'Macy\'s'}
  @browser.manage.timeouts.implicit_wait = 10
  dropdown_ele = @browser.find_element(:id => 'shippingCountry')
  my_options = Selenium::WebDriver::Support::Select.new(dropdown_ele)
  my_options.select_by(:index, 5)
  my_options.select_by(:text, 'Canada')
  all_options = my_options.options
  all_options.each do |option|
    puts option.text
  end
  p my_options.first_selected_option.text
end

=begin
#OR

myoptions = @browser.find_elements(tag_name: 'option')

myoptions.each{|e| puts e.text}

dropdown.select_by(:text, myoptions.sample.text)

myoptions.each do |i|
if i.selected?
selected_value = i.attribute(:value)
p selected_value
end
end
#dropdown.select_by(:index, 0)

#for i in 0..myoptions.size
#dropdown.select_by(:index, i)
#dropdown.select_by(:text, myoptions[i].text)

=end
end
def right_click
  @browser.get 'http://www1.macys.com/internationalContext/index.ognc'
  wait = Selenium::WebDriver::Wait.new(:timeout => 10, :message => 'Page has not loaded properly')
  wait.until {@browser.title.include?'Macy\'s'}
  @browser.manage.timeouts.implicit_wait = 10
  @browser.find_element(:id => 'href_changeCountry').click
  wait = Selenium::WebDriver::Wait.new(:timeout => 10, :message => 'Page has not loaded properly')
  wait.until {@browser.title.include?'Macy\'s - Shop Fashion Clothing'}
  ele = @browser.find_element(:id => 'globalSearchInputField')
  @browser.action.context_click(ele).send_keys(:down).perform
end

def save_screenshot
@browser.get("http://www.google.com")
@browser.save_screenshot("screenshot.png")
#screen shot will save where we selected drive by default
end

def locate_element
@browser.get("http://www.google.com")
if @browser.title == "Google"
 puts "Google page is displayed properly"
 else
  puts "Google page is not displayed properly"
end
 ele = @browser.find_element(:name, 'q')
 ele.send_keys "selenium webdriver"
 ele.submit
 sleep 5
 if @browser.title.include?"Google Search"
  puts "Search result page found"
 else
  puts "Search page is not displayed"
end
#find element within element
#search_links =  @browser.find_elements(:class, 'r').map{|e| e.find_element(:tag_name, "a")}
# Using CSS as select locator
search_links =  @browser.find_elements(:css, '.r').map{|e| e.find_element(:tag_name, "a")}
search_links.each do |i|
puts i.text
end
raise "no search results found" if search_links.empty?
search_links.sample.click
#search_links[2].click
sleep 10
end

def popup
@browser.get("http://www.hdfcbank.com/")
sleep 40
#@browser.navigate.refresh
login = @browser.find_element(:id, "loginsubmit").click
win_handles = @browser.window_handles
@browser.switch_to.window(win_handles.last)
#Explicit wait
wait = Selenium::WebDriver::Wait.new(:timeout => 5, :message => "page is not available")
wait.until{@browser.find_element(:xpath, "//a/img[@alt = 'Continue']")}
continue = @browser.find_element(:xpath, "//a/img[@alt = 'Continue']").click
sleep 5
@browser.title.include?"Welcome to HDFC Bank"
@browser.close
end

def alert_poup
@browser.get("https://www.irctc.co.in/eticketing/loginHome.jsf")
#Implicit wait
@browser.manage.timeouts.implicit_wait = 10
login = @browser.find_element(:id, "loginbutton").click
alert = @browser.switch_to.alert
alert.accept
sleep 5
@browser.find_element(:id, "usernameId").send_keys("swtbarnwal")
@browser.find_element(:class, "loginPassword").send_keys("skm220")
end

def broken_image

end

def upload_file
@browser.get("http://www.actimind.com/contact.php")
ele = @browser.find_element(:name, "file").send_keys("C:\\cucumber points.doc")
sleep 10
end

def print_file
@browser.action.key_down(:control)
             .send_keys("p")
             .key_up(:control)
             .perform
end

def checkbox
  @browser.get "https://www.facebook.com/"
  ele = @browser.find_element(:id => 'persist_box')
  ele.click
  ele.selected?.should be_true
end

def radio
  @browser.get "https://www.facebook.com/"
  ele = @browser.find_element(:id => 'u_0_d')
  ele.click
  ele.selected?.should be_true
end

def browser_name
@browser.execute_script("return navigator.appCodeName")
@browser.execute_script("alert('bye bye we are shutting down!!')")
sleep 2
alert = @browser.switch_to.alert
alert.accept
puts "Alert accepted"
sleep 10
end

def r_ques
aFile =  ("C:/wamp/www/selenium/test_d.xls")
book = Spreadsheet.open(aFile, "r")
sheet = book.worksheet(0)
a = []
sheet.each do |col|
break if col[0].nil?
a << col[0]
end
a = a.reject{|e| e == "Name"}
puts a
@browser.get("http://www.google.com")
ele = @browser.find_element(:name, 'q')
 ele.send_keys a[0]
 ele.submit
 sleep 5
 if @browser.title.include?"Google Search"
  puts "Search result page found"
 else
  puts "Search page is not displayed"
end
search_links =  @browser.find_elements(:css, '.r').map{|e| e.find_element(:tag_name, "a")}
search_links.each do |i|
puts i.text
end
raise "no search results found" if search_links.empty?
sleep 20
end

def read_excel
aFile = ("C:/wamp/www/selenium/test_data.xls")
book = Spreadsheet.open(aFile, "r")
sheet= book.worksheet(0)
sheet.each do |row|
break if row[0].nil?
puts row.join(',')
end
end

def write_excel
aFile = "write_data.xls"
book = Spreadsheet::Workbook.new
#Rename Worksheet and add new sheet
sheet1 = book.create_worksheet :name => "cde"
sheet = book.create_worksheet :name => "Index"
#sheet.name = "New Sheet"
format = Spreadsheet::Format.new :color => :blue,
                                 :weight => :bold,
                                 :size => 12
								
for i in 1..3								
col = sheet1.row(i)
if i == 1
col[0] = 'Selenium'
elsif i == 2
col[0] = 'Ruby'
else
col[0] = 'Cucumber'
end
#sheet[0,0] = "ruby"
#sheet[0,1] = "selenium"
#sheet[1,0] = "Cucumber"
col.set_format(0, format)
book.write aFile
File.open("write_data.xls", "r")
sleep 10
end
end

def gmail_contacts
@browser.get("https://www.gmail.com/")
sleep 30
@browser.manage.timeouts.implicit_wait = 10
wait = Selenium::WebDriver::Wait.new(:timeout => 30)
wait.until{@browser.title.include?"Gmail"}	
@browser.title.include?"Gmail"
@browser.find_element(:id, "Email").send_keys("sweety511302")
@browser.find_element(:id, "next").click
@browser.find_element(:id, "Passwd").send_keys("redrose12")
@browser.find_element(:id, "signIn").click
wait.until{@browser.title.include?"sweety511302@gmail.com - Gmail"}
@browser.find_element(:class, "asT-asx").click
@browser.find_element(:xpath, "//div[@id=':1h']/div[@class='J-N-Jz']").click
sleep 10
win_handles = @browser.window_handles
@browser.switch_to.window(win_handles.last)
sleep 30
all_email = @browser.find_elements(:class => 'wDPsO').map{|e| e.text}
all_name = @browser.find_elements(:class => 'iEwMNc').map{|e| e.text}
sleep 5
aFile = "email.xls"
book = Spreadsheet::Workbook.new
sheet = book.create_worksheet :name => "Contacts"
format = Spreadsheet::Format.new :color => :black,
                                 :weight => :bold,
                                 :size => 12
col = sheet.row(0)
col[0] = "Name"
col[1] = "Email"
col.set_format(0, format)
col.set_format(1, format)
#sheet[0,0] = "Name"
#sheet[0,1] = "Email"
for i in 1...all_email.size
sheet[i,0] = all_name[i]
sheet[i,1] = all_email[i]
book.write aFile
end
end

def open_notepad
#aFile = File.open("15J Marketing.txt", "r") //will open notepad in memory, not in real
#puts b = aFile.sysread(20) 
#a = IO.readlines("C:/Users/skumari/Desktop/brkfst.txt")
# puts a[1]
#`Notepad C:/Users/skumari/Desktop/15J Marketing.txt` // will open notepad in real
end

def open_excel
`excel.exe C:/Users/skumari/Desktop/email.xls`
end

def calender
  @browser.get "http://only-testing-blog.blogspot.in/2014/09/selectable.html#sthash.E64pB7xO.dpuf"
  @browser.manage.timeouts.implicit_wait = 10
  ele = @browser.find_element(:css, 'div.post-body.entry-content>div>button')
  wait = Selenium::WebDriver::Wait.new(:timeout => 10, :message => 'Page has not loaded properly')
  wait.until {@browser.title.include?'Only Testing: Selectable'}
  @browser.find_element(:id => 'datepicker').click
  @browser.find_elements(:css, '.ui-state-default.ui-state-hover').sample.click
end

def drag_drop
  @browser.get "http://html5demos.com/drag"
  @browser.manage.timeouts.implicit_wait = 10
  source = @browser.find_element(:id => 'one')
  target = @browser.find_element(:id => 'bin')
  @browser.action.drag_and_drop(source,target).perform
  p source.displayed?
end

def double_click
  @browser.get "http://only-testing-blog.blogspot.in/2014/09/selectable.html#sthash.E64pB7xO.dpuf"
  ele = @browser.find_element(css: '.post-body.entry-content>div>button')
  action = @browser.action
  action.double_click(ele)
  action.perform
  sleep 2
  alert = @browser.switch_to.alert
  p alert.text
  alert.accept
  action1 = @browser.action
  ele1 = @browser.find_element(css: '.title')
  action1.send_keys(ele1, [:control, 'a'])
  action1.send_keys(ele1, [:control, 'c'])
  action1.perform
end

def services
require 'httparty'
require 'json'

response = HTTParty.get "http://questionsbank.sweetybthareja.com/service/1"
data = JSON.parse response
puts data['id']
end

def table_element
@browser.get "http://www.actimind.com/contact.php"
@browser.find_element(:xpath => '//table[@class='text']//tr[3]/td[3]/input[@class='control']') #take parents class of table then tr then td
end

def scroll
  @browser.get "https://www.facebook.com/"
  @browser.execute_script("window.scrollTo(1000, 0);\n")
end

def mouse_hover
  @browser.get "http://www.actimind.com/contact.php"
  ele = @browser.find_element(css: '#nav-about>a>span')
  @browser.action.move_to(ele).perform
end

def add_extention
  profile = Selenium::WebDriver::Firefox::Profile.new
  profile['browser.startup.homepage'] = 'http://www.google.com'
  profile['browser.javascript.enabled'] = false
  profile['extension.firebug.console.enableSites'] = true
  @browser = Selenium::WebDriver.for :firefox, :profile => profile
  @browser.manage.window.maximize
  @browser.manage.timeouts.implicit_wait = 20
  @browser.get "www.macys.com"
end

#@browser = Selenium::WebDriver.for :firefox
#@browser = Selenium::WebDriver.for :chrome
begin
#@browser.manage.window.maximize

#goto_ruby_ques
#select_dropdown
#right_click
#save_screenshot
#locate_element
#popup
#alert_poup
#read_excel
#write_excel
#upload_file
#print_file
#browser_name
#r_ques
gmail_contacts
#open_notepad
calender
drag_drop
double_click
checkbox
radio
scroll
mouse_hover
add_extention
ensure
#@browser.quit
end