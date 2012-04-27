Feature: Hidden Links
  In order to clean up the user experience
  As the system
  I want to hide links from users who can't act on them

  Background:
    Given there are the following users:
      | email           | password | admin |
      | admin@163.com   | password | true  |
      | zhaoyun@163.com | password | false |
    And there is a forum called "main forum"

  Scenario: New forum link is hidden for non-signed-in users
    Given I am on the homepage
    Then I should not see the "New Forum" link

  Scenario: New forum link is hidden for signed-in users
    Given I am signed in as "zhaoyun@163.com"
    Then I should not see the "New Forum" link

  Scenario: New forum link is shown to admins
    Given I am signed in as "admin@163.com"
    Then I should see the "New Forum" link

  Scenario: Edit forum link is hidden for non-signed-in users
    Given I am on the homepage
    When I follow "main forum"
    Then I should not see the "Edit Forum" link

  Scenario: Edit forum link is hidden for signed-in users
    Given I am signed in as "zhaoyun@163.com"
    When I follow "main forum"
    Then I should not see the "Edit Forum" link

  Scenario: Edit forum link is shown to admins
    Given I am signed in as "admin@163.com"
    When I follow "main forum"
    Then I should see the "Edit Forum" link

  Scenario: Delete forum link is hidden for non-signed-in users
    Given I am on the homepage
    When I follow "main forum"
    Then I should not see the "Delete Forum" link

  Scenario: Delete forum link is hidden for signed-in users
    Given I am signed in as "zhaoyun@163.com"
    When I follow "main forum"
    Then I should not see the "Delete Forum" link

  Scenario: Delete forum link is shown to admins
    Given I am signed in as "admin@163.com"
    When I follow "main forum"
    Then I should see the "Delete Forum" link
