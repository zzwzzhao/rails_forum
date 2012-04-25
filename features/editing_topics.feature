Feature: Editing topics
  In order to alter topic information
  As a user
  I want a form to edit the tickets

  Background:
    Given there is a forum called "main forum"
    And that forum has a topic:
      | title     | body             |
      | Pis       | Perfect is shit! |
    Given I am on the homepage
    When I follow "main forum"
    And I follow "Pis"
    When I follow "Edit Topic"

  Scenario: Updating a topic
    When I fill in "Title" with "Burning pis"
    And I press "Update Topic"
    Then I should see "Topic has been updated."
    And I should see "Burning pis" within "#topic h2"
    But I should not see "Pis"

  Scenario: Updating a topic with invalid information
    When I fill in "Title" with ""
    And I press "Update Topic"
    Then I should see "Topic has not been updated."
