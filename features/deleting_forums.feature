Feature: Deleting forums
  In order to remove needless forums
  As a forum manager
  I want to make them disappear

  Background:
    Given there are the following users:
      | email         | password | admin |
      | admin@163.com | password | true  |
    And I am signed in as them

  Scenario: Deleting a project
    Given there is a forum called "main forum"
    And I am on the homepage
    When I follow "main forum"
    And I follow "Delete Forum"
    Then I should see "Forum has been deleted."
    Then I should not see "main forum"
