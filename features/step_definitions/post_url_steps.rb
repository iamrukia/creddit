Given /^I am logged into the system as "([^"]*)" with password "([^"]*)"$/ do |email, password|
  User.create( :email => email, :password => password, :confirm_password => password)
  Given %Q{I follow "Sign in"}
  And %Q{I fill in "Email" with "#{email}"}
  And %Q{I fill in "Password" with "#{password}"}
  And %Q{I press "Sign in"}
end