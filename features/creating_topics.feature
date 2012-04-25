Feature: Creating Topics
  In order to create topics for forums
  As a user
  I want to be able to select a forums and do that

  Background:
    Given there is a forum called "Dota Beginner"
    And I am on the homepage
    When I follow "Dota Beginner"
    And I follow "New Topic"

  Scenario: Creating a ticket
    When I fill in "Title" with "sf am spe"
    And I fill in "Body" with "sf is my love"
    And I press "Create Topic"
    Then I should see "Topic has been created."

  Scenario: Creating a topic without valid attributes fails
    When I press "Create Topic"
    Then I should see "Topic has not been created."
    And I should see "Title can't be blank"
    And I should see "Body can't be blank"

  Scenario: Body must be longer than 10 characters
    When I fill in "Title" with "sf am spe"
    And I fill in "Body" with "just it"
    And I press "Create Topic"
    Then I should see "Topic has not been created."
    And I should see "Body is too short"

