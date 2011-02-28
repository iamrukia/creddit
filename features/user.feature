Feature: Register User
  In order to login to use creddit
  User
  wants to be able to register
  
  Scenario: Successful registration of an unidentifed user
    Given I am not identified
    And I am on the home page # says go to the home page via visit path_to(page_name)
    When I click on signup
    # Then I should see the user registration page -- dave recommends not doing this 
    When I enter user details
    And I press "Create"
    Then I should be on successfuly registered page
    And I should see "Signed up successfully"
    
