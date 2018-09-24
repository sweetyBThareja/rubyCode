require 'rubygems'
require 'page-object'
require 'selenium-webdriver'
require_relative 'home_page'


include PageObject::PageFactory
@browser = Selenium::WebDriver.for :firefox
visit(HomePage)