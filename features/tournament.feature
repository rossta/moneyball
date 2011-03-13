Feature: Tournament
  
  Background:
    Given I'm a visitor to the site
    And a course named "Bethpage Black"
  
  Scenario: Create new score card
    When I go to the home page
    And I follow "Start new tourney"
    And I fill in "Name" with "Scramble Cinco"
    And I select "Bethpage Black" from "Course"
    And I press "Save"
    Then I should see "Scramble Cinco"
    And I should see "Leaderboard"
    And I should see "New scorecard"
