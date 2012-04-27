Feature: Editing a user
  In order to change a user' details
  As an admin
  I want to be able to modify them through the backend

  Background:
    Given there are the following users:
      | email         | password | admin |
      | admin@163.com | password | true  |
    And I am signed in as them

    Given there are the following users:
      | email           | password |
      | zhaoyun@163.com | password |
    Given I am on the homepage
    When I follow "Admin"
    And I follow "Users"
    And I follow "zhaoyun@163.com"
    And I follow "Edit User"

  Scenario: Updating a user's details
    When I fill in "Email" with "newuser@163.com"
    And I press "Update User"
    Then I should see "User has been updated."
    And I should see "newuser@163.com"
    And I should not see "zhaoyun@163.com"

  Scenario: Toggling a user's admin ability
    When I check "Is an admin?"
    And I press "Update User"
    Then I should see "User has been updated."
    And I should see "zhaoyun@163.com (Admin)"

  Scenario: Updating with an invalid email fails
    When I fill in "Email" with "lalalalala"
    And I press "Update User"
    Then I should see "User has not been updated."
    And I should see "Email is invalid"
