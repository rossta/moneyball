Feature: Scorecard
  
  Background:
    Given I'm a visitor to the site
    And a course named "Bethpage Black"
  
  Scenario: Create new scorecard
    When I go to the home page
    And I follow "New scorecard"
    And I select "Bethpage Black" from "Course"
    And I fill in "Team name" with "Team Weplay"
    And I press "Begin"
    Then I should see "Welcome"
    Then I should see "Bethpage Black"
    And I should see "Team Weplay"
    And I should see "Front 9"
    And I should see "Back 9"

  Scenario: Score hole
    When I have a scorecard for "Bethpage Black"
    And I go to my scorecard
    And I follow "Edit 1"
    And I fill in "4" for "Score"
    And I select "4" from "Par"
    And I press "Save"
    Then I should see "Bethpage Black"
    And I should see "You got a par on hole 1"
    And I should see "4"

  Scenario: New tournament scorecard
    Given the tournament "Scramble Cinco" at "Bethpage Black"
    When I go to the home page
    And I follow "Scramble Cinco"
    And I follow "New scorecard"
    And I select "Bethpage Black" from "Course"
    And I fill in "Team name" with "Team Weplay"
    And I press "Begin"
    Then I should see "Welcome"
    Then I should see "Scramble Cinco"
    And I should see "Team Weplay"
    And I should see "Front 9"
    And I should see "Back 9"

