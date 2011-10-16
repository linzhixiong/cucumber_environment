require 'rubygems'
require 'capybara/cucumber'
#require 'watir-webdriver'

Capybara.app="http://localhost:8080"
Capybara.javascript_driver = :webkit
#require 'capybara/envjs'
#Capybara.javascript_driver = :envjs

#Capybara.default_driver = :selenium


 Capybara.register_driver :rack_test do |app|
      Capybara::Selenium::Driver.new(app, :browser => :firefox)
    end


