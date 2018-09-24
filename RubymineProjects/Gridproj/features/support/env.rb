#require 'bundler/setup'
#Bundler.require :default
require 'selenium-webdriver'
require 'page-object'
require 'require_all'
require 'rubygems'
require 'cucumber'

require_all 'lib'

PageObject.default_element_wait = 20
PageObject.default_page_wait = 60

World(PageObject::PageFactory)