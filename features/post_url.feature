Feature: posting new links
  In order to make url links available to myself and to others
  As a logged in user
  I want to post links

  Background:
    Given I am on the home page
    And I am logged into the system as "a@b.com" with password "password"
    When I follow "Submit a link"

  Scenario: Successfully posting new links
    And I fill in "Title" with "Some Title"
    And I fill in "URL" with "http://www.yahoo.com"
    And I press "Post"
    Then I should see "URL has been posted successfully"
    And I should see "posted by a@b.com"
    And I should see "Some Title" within "a[href='http://www.yahoo.com']"

  Scenario: Successfully posting new links without http: or https: protocols
    And I fill in "Title" with "Some Title"
    And I fill in "URL" with "www.yahoo.com"
    And I press "Post"
    Then I should see "URL has been posted successfully"
    And I should see "posted by a@b.com"
    And I should see "Some Title" within "a[href='http://www.yahoo.com']"

  Scenario: Links should not be posted without a title
    And I fill in "URL" with "http://www.something.com"
    And I press "Post"
    And I should see "Title can't be blank"

  Scenario: Links should not be posted without a URL
    And I fill in "Title" with "Some Title"
    And I press "Post"
    And I should see "Posted url can't be blank"

