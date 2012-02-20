require 'rubygems'
require 'selenium-webdriver'
require 'rspec/expectations'

driver = Selenium::WebDriver.for :firefox

Before do
	@driver = driver
end

at_exit do
	@driver.quit
end