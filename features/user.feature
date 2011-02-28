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
    
