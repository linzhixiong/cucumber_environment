#require "watir-webdriver"
#require "selenium-webdriver"

#Given /^have a page name google$/ do
#
#end
#When /^I go to google$/ do
#  #browser=Watir::Browser.new(:firefox, :profile=>"default")
#  #chrome=Watir::Browser.new :chrome
#  #browser.goto 'http://bit.ly/watir-example'
#  print 'dddd'
#
#  visit('http://localhost:8080')
#  visit('http://www.renren.com')
#  visit "http://www.google.com"
#end
#
#Then /^I Should see 'Gmail'$/ do
#
#end


When /^I enter search key 'renren'$/ do
  fill_in('kw', :with => 'renren')
end
When /^I click the search$/ do
  click_button "su"
end
Given /^I am on the google search page$/ do
  visit "http://www.baidu.com"
end
Then /^I Should see '(.*)'$/ do |content|
  #page.has_content?('http://www.renren.com')
  page.should have_content(content)

end