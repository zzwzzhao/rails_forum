Feature: Deleting users
  In order to remove users
  As an admin
  I want to click a button and delete them

  Background:
    Given there are the following users:
      | email           | password | admin |
      | admin@163.com   | password | true  |
      | zhaoyun@163.com | password | false |
    And I am signed in as "admin@163.com"
    Given I am on the homepage
    When I follow "Admin"
    And I follow "Users"

  Scenario: Delete a user
    And I follow "zhaoyun@163.com"
    When I follow "Delete User"
    Then I should see "User has been deleted"

  Scenario: Users can't delete themselves
    When I follow "admin@163.com"
    And I follow "Delete User"
    Then I should see "You cannot delete yourself!"
