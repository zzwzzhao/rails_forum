Feature: Deleting topics
  In order to remove topics
  As a usr
  I want to press a button and make them disappear

  Background:
    Given there are the following users:
      | email                  | password |
      | zhaoyun@163.com        | password |
    And I am signed in as them
    Given there is a forum called "main forum"
    And "zhaoyun@163.com" has created a topic for this forum:
      | title | body             |
      | Pis   | Perfect is shit! |
    Given I am on the homepage
    When I follow "main forum"
    And I follow "Pis"

  Scenario: Deleting a topic
    When I follow "Delete Topic"
    Then I should see "Topic has been deleted."
    And I should be on the forum page for "main forum"
