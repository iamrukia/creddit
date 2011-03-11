Feature: Voting on URLs
  As a logged in user
  I want to vote on URLs
  In order to alter the ranks of posted URLs

  Scenario: Display voting buttons for a logged in user on another user's posted url
    Given the following users exist:
     |email    | password|
     |foo@f.com| password|
     |bar@f.com| password|
    And I log in with "foo@f.com" and "password"
    And the following posts exist:
     |title|posted_url             | user    |
     |foo  |http://www.example.com |bar@f.com|
    When I go to the home page
    Then I should see an up-vote button for "http://www.example.com"
    And I should see a down-vote button for "http://www.example.com"

  Scenario: Don't display voting buttons for a non-logged in user
    Given the following users exist:
      |email    | password|
      |foo@f.com| password|
    And the following posts exist:
     |title|posted_url             | user    |
     |foo  |http://www.example.com |foo@f.com|
    And I am not identified
    When I go to the home page
    Then I should not see an up-vote button for "http://www.example.com"
    And I should not see a down-vote button for "http://www.example.com" 
