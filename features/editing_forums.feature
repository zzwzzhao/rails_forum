Feature: Editing Forums
  In order to update forum information
  As a user
  I want to be able to do that through an interface

  Background:
    Given there is a forum called "main forum"
    And I am on the homepage
    When I follow "main forum"
    And I follow "Edit Forum"

  Scenario: Updating a forum
    And I fill in "Name" with "main forum beta"
    And I press "Update Forum"
    Then I should see "Forum has been updated."
    Then I should be on the forum page for "main forum beta"

  Scenario: Update a forum with invalid attributes is bad
    And I fill in "Name" with ""
    And I press "Update Forum"
    Then I should see "Forum has not been updated."
