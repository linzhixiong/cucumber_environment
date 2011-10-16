Feature: Search our website from google

  @bvt
  Scenario: As a user I want to get the renren site link by searhing google
    Given I am on the google search page
    And I enter search key 'renren'
    When I click the search
    Then I Should see '人人'
