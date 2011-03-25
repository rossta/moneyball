Feature: Tournament

  Background:
    Given I'm a visitor to the site
    And a course named "Bethpage Black"

  Scenario: Create new tournament
    When I go to the home page
    And I follow "Start new tourney"
    And I fill in "Name" with "Scramble Cinco"
    And I select "Bethpage Black" from "Course"
    And I press "Save"
    Then I should see "Scramble Cinco"
    And I should see "Leaderboard"
    And I should see "New scorecard"

  Scenario: New tournament scorecard
    Given the tournament "Scramble Cinco" at "Bethpage Black"
    When I go to the tournament page
    And I follow "New scorecard"
    And I select "Bethpage Black" from "Course"
    And I fill in "Team name" with "Team Weplay"
    And I press "Begin"
    Then I should see "Welcome"
    Then I should see "Scramble Cinco"
    And I should see "Team Weplay"
    And I should see "Front 9"
    And I should see "Back 9"

