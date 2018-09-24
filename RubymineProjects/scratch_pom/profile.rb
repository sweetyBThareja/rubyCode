require 'rubygems'
require 'selenium-webdriver'
require 'page-object'
require 'pry'
require 'yaml'
require 'data_magic'

PageObject.default_element_wait = 20
PageObject.default_page_wait = 90

require_relative 'home_page'
require_relative 'macys_page'
require_relative 'create_profile'
require_relative 'signin_page'

include PageObject::PageFactory

@browser = Selenium::WebDriver.for :chrome
@browser.manage.window.maximize

visit(HomePage).us_mode
visit(MacysHomePage).select_specific_category('My Account')
on(SignInPage).create_btn
on(CreateProfilePage).create_profile('may_be_email' => true)
#on(MyAccountPage)
