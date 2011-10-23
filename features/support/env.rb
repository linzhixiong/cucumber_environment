require 'rubygems'
require 'capybara/cucumber'

#require 'capybara/envjs'
#require 'watir-webdriver'

#Capybara.app="http://localhost:8081"
#Capybara.javascript_driver = :webkit
#require 'capybara/envjs'
#Capybara.javascript_driver = :envjs

Capybara.default_driver = :selenium
Capybara.run_server = false

Capybara.register_driver :selenium do |app|

  Capybara::Selenium::Driver.new(app, :browser =>:firefox)
end

require 'gizmo'
World(Gizmo::Helpers)
Gizmo.configure do |config|
  config.mixin_dir = File.dirname(__FILE__) + '/pages'
end

