Given /^I am on the main page$/ do
  visit 'http://www.renren.com'
end
When /^I fill the text '(.*)' in the text box$/ do |content|
  fill_in 'content', :with=>content
end
When /^I click the submit button$/ do
  click_button 'submit'
end