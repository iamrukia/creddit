Feature: View URL list at homepage
  In order to be able to follow links
  As a user
  I want to be able to see the links on Creddit's home page

  Scenario: Show appropriate message when there is no post
    Given there are no posts
    And I am on the home page
    Then I should see "No Posts"

  Scenario: Show posts on home page
    Given the following users exist:
     |email    | password|
     |foo@f.com| password|
    And the following posts exist:
     |title|posted_url  | user    |
     |foo  |example.com |foo@f.com|
    Given I am on the home page
    Then I should see the list of posted URLs:
     |title|posted_url  | user    |
     |foo  |example.com |foo@f.com|
