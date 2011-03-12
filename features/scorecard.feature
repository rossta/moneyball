Feature: Scorecard

  Scenario: Create new score card
    Given I'm a visitor to the site
    And a course named "Bethpage Black"
    When I go to the home page
    And I follow "New scorecard"
    And I select "Bethpage Black" from "Course"
    And I fill in "Team name" with "Team Weplay"
    And I press "Begin"
    And show me the page
    Then I should see "Welcome"
    Then I should see "Bethpage Black"
    And I should see "Team Weplay"
    And I should see "Front 9"
    And I should see "Back 9"
