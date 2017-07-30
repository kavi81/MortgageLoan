require 'selenium-webdriver'
require 'page-object'
require 'page-object/page_factory'
#require 'test/unit'
require 'headless'
require 'savon'


p "inside of env rb"
World(PageObject::PageFactory)