Feature: Signing in
  In order to use the site
  As a user
  I want to be able to sign in

  Scenario: Signing in via confirmation
    Given there are the following users:
      | email                  | password | unconfirmed |
      | zhaoyun@163.com        | password | true        |
    And "zhaoyun@163.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see "Your account was successfully confirmed"
    And I should see "You are now signed in.Dota_forumin as zhaoyun@163.com"

  Scenario: Signing in via form
    Given there are the following users:
      | email                  | password |
      | zhaoyun@163.com        | password |
    And I am signed in as them
