Feature: Login feature
  In order to post links and vote
  As a User
  I want to be able to login

  Background:
    Given the following users exist:
     |email       | password|
     |ashish@a.com|   sehraa|

  Scenario: Succesful login
    Given I am not identified
    And I am on the home page
    When I follow "Sign in"
    When I fill in "Email" with "ashish@a.com"
    And I fill in "Password" with "sehraa"
    And I press "Sign in"
    Then I should be on the home page
    And I should see "Signed in as ashish@a.com"

  Scenario: Failed login
    Given I am not identified
    And I am on the home page
    When I follow "Sign in"
    When I fill in "Email" with "ashish@aa.com"
    And I fill in "Password" with "sehraaa"
    And I press "Sign in"
    Then I should see "Invalid email or password"

