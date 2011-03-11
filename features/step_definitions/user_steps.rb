Given /^I am not identified$/ do
   page.reset!  #Signs out any signed in user.
end

Given /^I log in with "([^"]*)" and "([^"]*)"$/ do |email, password|
  When %Q{I go to the home page}
  When %Q{I follow "Sign in"}
  When %Q{I fill in "Email" with "#{email}"}
  When %Q{I fill in "Password" with "#{password}"}
  When %Q{I press "Sign in"}
end