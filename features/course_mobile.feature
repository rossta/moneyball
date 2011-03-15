@javascript
Feature: Course (Mobile)

  Background:
    Given I'm a mobile visitor to the site
  
  Scenario: Create new score card
    When I go to the home page
    And a course named "Bethpage Black"
    And I follow "New course"
    And I fill in "Name" with "Bethpage Black"
    And I follow "Save"
    Then I should see "success"
    And I should see "Bethpage Black"
    And I should see "Front 9"
    And I should see "Back 9"
  