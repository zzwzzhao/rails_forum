Feature: Deleting topics
  In order to remove topics
  As a usr
  I want to press a button and make them disappear

  Background:
    Given there is a forum called "main forum"
    And that forum has a topic:
      | title | body             |
      | Pis   | Perfect is shit! |
    Given I am on the homepage
    When I follow "main forum"
    And I follow "Pis"

  Scenario: Deleting a topic
    When I follow "Delete Topic"
    Then I should see "Topic has been deleted."
    And I should be on the forum page for "main forum"
