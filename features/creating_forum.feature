Feature: Creating forums
  In order to have forums to store topics
  As a user
  I want to create them easily

  Scenario: Creating a forums
    Given I am on the homepage
    When I follow "New Forum"
    And I fill in "Name" with "main forum"
    And I press "Create Forum"
    Then I should see "Forum has been created."
