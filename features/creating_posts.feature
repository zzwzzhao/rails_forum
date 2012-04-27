Feature: Creating posts
  In order to discuss with others
  As a user
  I want to publish posts

  Background:
    Given there are the following users:
      | email           | password |
      | zhaoyun@163.com | password |
    And I am signed in as them
    And there is a forum called "main forum"
    And "zhaoyun@163.com" has created a topic for this forum:
      | title | body             |
      | Pis   | Perfect is shit! |
    Given I am on the homepage
    And I follow "main forum"

  Scenario: Creating a post
    When I follow "Pis"
    And I fill in "Body" with "Added a post!"
    And I press "Create Post"
    Then I should see "Post has been created."
    Then I should see "Added a post!" within "#posts"

  Scenario: Creating a invalid post
    When I follow "Pis"
    And I press "Create Post"
    Then I should see "Post has not been created."
    And I should see "Body can't be blank"
