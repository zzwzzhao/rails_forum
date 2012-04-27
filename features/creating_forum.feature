Feature: Creating forums
  In order to have forums to store topics
  As a user
  I want to create them easily

  Background:
    Given there are the following users:
      | email         | password | admin |
      | admin@163.com | password | true  |
    And I am signed in as them
    Given I am on the homepage
    When I follow "New Forum"

  Scenario: Creating a forums
    And I fill in "Name" with "main forum"
    And I press "Create Forum"
    Then I should see "Forum has been created."
    And I should be on the forum page for "main forum"
    And I should see "main forum - Forum - Dota_forum"

  Scenario: Creating a forum without a name
    And I press "Create Forum"
    Then I should see "Forum has not been created."
    And I should see "Name can't be blank"
