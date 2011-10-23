When /^I enter search key 'renren'$/ do
  fill_in('kw', :with => 'renren')
end
When /^I click the search$/ do
  click_button "su"
end
Given /^I am on the google search page$/ do
  visit "http://www.baidu.com"
end

Then /^I should see '(.*)'$/ do |content|
  #page.has_content?('http://www.renren.com')
  page.should have_content(content)

end
Given /^I am on the renren login page$/ do
  visit "http://www.renren.com"
end
When /^I enter the email address "(.*)"$/ do |email|
  fill_in 'email', :with=> email
end
When /^I enter the password "(.*)"$/ do |password|
  fill_in 'password', :with=>password
end
When /^I submit$/ do
  click_button 'login'
end


Given /^I am  the renren home page$/ do
  visit "http://www.renren.com"
  fill_in 'email', :with=> $email
  fill_in 'password', :with=>$password
  click_button 'login'
end

When /^I edit the content of status with "(.*)"$/ do |content|
  fill_in 'content', :with=> content
end
When /^I click "(.*)"/ do|text|
  click_button text
end

Given /^I am on the weibo home page$/ do
visit('http://www.weibo.com')
 fill_in 'loginname', :with=> $email
  fill_in 'password', :with=>'@@@@@'
  click_link 'login_submit_btn'
end