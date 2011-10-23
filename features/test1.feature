Feature: Search our website from google

  @bvt
  Scenario: As a user I want to get the renren site link by searhing google
    Given I am on the google search page
    And I enter search key 'renren'
    When I click the search
    Then I should see '人人'

  Scenario: As a use I want to login using account and password
    Given I am on the renren login page
    And I enter the email address "darlinglele@live.com"
    And I enter the password "Rdearlele419"
    When I submit
    Then I should see '林志雄'

  Scenario: As a use I want to update my status
    Given I am  the renren home page
    And I edit the content of status with "This is a test content added automatically"
    When I click "发布"
    Then I should see 'This is a test content added automatically'

  Scenario: As a use I want to update my status
    Given I am on the weibo home page
    And I edit the content of status with "This is a test content added automatically"
    When I click "发布"
    Then I should see 'This is a test content added automatically'




