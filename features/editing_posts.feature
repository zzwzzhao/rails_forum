Feature: Editing posts
  In order to alter post information
  As a user
  I want a form to edit the posts

  Background:
    Given there are the following users:
      | email              | password |
      | zhaoyun@163.com    | password |
    And I am signed in as them
    Given there is a forum called "main forum"
    And "zhaoyun@163.com" has created a topic for this forum:
      | title   | body             |
      | Pis     | Perfect is shit! |
    And "zhaoyun@163.com" has created a post for this topic:
      | body           |
      | lalalalalalala |
    Given I am on the homepage
    When I follow "main forum"
    And I follow "Pis"
    And I follow "Edit Post"

  Scenario: Updating a post
    When I fill in "Body" with "Perfect is shit!!!!!"
    And I press "Update Post"
    Then I should see "Post has been updated."
    And I should see "Perfect is shit!!!!!" within "#posts"
    And I should not see "lalalalalala"

  Scenario: Updating a post with invalid information
    When I fill in "Body" with ""
    And I press "Update Post"
    Then I should see "Post has not been updated."
