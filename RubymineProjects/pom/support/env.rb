require 'selenium-webdriver'
require 'page-object'
require 'pry'
require 'rspec'
require 'logger'
require 'require_all'
require 'yaml'

require_all 'lib'

PageObject.default_page_wait = 60
PageObject.default_element_wait = 20

World(PageObject::PageFactory)