Feature: Test JavaScript Tag

  Scenario: As a user I want to update my status
     Given I am on the main page
     And I fill the text 'Update my renren status automatically' in the text box
     When I click the submit button
     Then I Should see 'Update my renren status automatically'
