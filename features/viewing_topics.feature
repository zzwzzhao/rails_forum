Feature: Viewing topics
  In order to view the topics for a forum
  As a user
  I want to see them on that forum's page

  Background:
    Given there are the following users:
      | email                  | password |
      | zhaoyun@163.com        | password |
    Given there is a forum called "main forum"
    And "zhaoyun@163.com" has created a topic for this forum:
      | title | body             |
      | Pis   | Perfect is shit! |
    And there is a forum called "dota beginner"
    And "zhaoyun@163.com" has created a topic for this forum:
      | title      | body            |
      | Angel_lover| I go to home wc! |
    And I am on the homepage

  Scenario: Viewing topics for a given forum
    When I follow "main forum"
    Then I should see "Pis"
    And I should not see "Angel_lover"
    When I follow "Pis"
    Then I should see "Pis" within "#topic h2"
    And I should see "Perfect is shit!"

    When I follow "Dota_forum"
    And I follow "dota beginner"
    Then I should see "Angel_lover"
    And I should not see "Pis"
    When I follow "Angel_lover"
    Then I should see "Angel_lover" within "#topic h2"
    And I should see "I go to home wc!"

