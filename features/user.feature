Feature: Register User
  In order to login to use creddit
  User
  wants to be able to register
  
  Scenario: Successful registration of an unidentifed user
    Given I am not identified
    And I am on the home page # says go to the home page via visit path_to(page_name)
    When I follow "Sign up"
    # Then I should see the user registration page -- dave recommends not doing this 
    When I fill in "Email" with "ashish@a.com"
    And I fill in "Password" with "sehraa"
    And I fill in "Password confirmation" with "sehraa"
    And I press "Sign up"
    Then I should be on the home page
    And I should see "You have signed up successfully."
    
  Scenario: Failed registration because of no email
    Given I am not identified
    And I am on the home page # says go to the home page via visit path_to(page_name)
    When I follow "Sign up"
    When I fill in "Email" with "ashish"
    And I fill in "Password" with "sehraa"
    And I fill in "Password confirmation" with "sehraa"
    And I press "Sign up"
    Then I should see "Email is invalid"

  Scenario: Failed registration because passwords do not match
    Given I am not identified
    And I am on the home page # says go to the home page via visit path_to(page_name)
    When I follow "Sign up"
    When I fill in "Email" with "ashish@a.com"
    And I fill in "Password" with "sehraa"
    And I fill in "Password confirmation" with "aaaaaaa"
    And I press "Sign up"
    Then I should see "Password doesn't match confirmation"

  Scenario: Failed registration because password is too short
    Given I am not identified
    And I am on the home page # says go to the home page via visit path_to(page_name)
    When I follow "Sign up"
    When I fill in "Email" with "ashish@a.com"
    And I fill in "Password" with "aaaa"
    And I fill in "Password confirmation" with "aaaa"
    And I press "Sign up"
    Then I should see "Password is too short"    