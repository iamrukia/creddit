Feature: posting new links
  In order to make url links available to myself and to others
  As a logged in user
  I want to post links

  Scenario: Successfully posting new links
    Given I am on the home page
    And I am logged into the system as "a@b.com" with password "password"
    When I follow "Submit a link"
    And I fill in "Title" with "Some Title"
    And I fill in "URL" with "http://www.something.com"
    And I press "Post"
    Then I should see "URL has been posted successfully"
    And I should see "posted by a@b.com"
