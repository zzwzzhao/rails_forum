Feature: Viewing forums
  In order to publish topic to a forum
  As a user
  I want to be able to see a list of available forums

  Scenario: Listing all forums
    Given there is a forum called "main forum"
    And I am on the homepage
    When I follow "main forum"
    Then I should be on the forum page for "main forum"
