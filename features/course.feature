Feature: Course
  
  Background:
    Given I'm a visitor to the site
  
  Scenario: Create new score card
    When I go to the home page
    And a course named "Bethpage Black"
    And I follow "New course"
    And I fill in "Name" with "Bethpage Black"
    And I press "Save"
    Then I should see "success"
    And I should see "Bethpage Black"
    And I should see "Front 9"
    And I should see "Back 9"

  Scenario: Hole information
    Given a course named "Bethpage Black"
    When I go to the courses page
    And I follow "Bethpage Black"
    And I follow "Edit 1"
    And I select "18" from "Handicap"
    And I select "4" from "Par"
    And I fill in "400" for "Yards"
    And I press "Save"
    Then I should see "Bethpage Black"
    And I should see "Hole 1"
    And I should see "par 4"
    And I should see "handicap 18"
    And I should see "400 yards"
    And I should see "Front 9"
    And I should see "Back 9"
