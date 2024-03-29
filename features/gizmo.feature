Feature:Search on the homepage

Scenario: A user can perform a search from the homepage
    Given a user is on the github homepage
    When the user enters "gizmo" into the search box and clicks the magnifying glass icon
    And the user clicks on the "icaruswings / gizmo" link
    Then the user is on the "gizmo" github repository details page
    And the user is on a github repository details page which belongs to "icaruswings"
