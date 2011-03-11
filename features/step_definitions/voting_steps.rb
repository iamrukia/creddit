Then /^I should see an up\-vote button for "([^"]*)"$/ do |url|
  with_scope(".post") do
    page.should have_selector("a[href='#{url}']")
    page.should have_selector("a.up-vote[href='#']")
  end
end

Then /^I should see a down\-vote button for "([^"]*)"$/ do |url|
  with_scope(".post") do
    page.should have_selector("a[href='#{url}']")
    page.should have_selector("a.down-vote[href='#']")
  end
end

Then /^I should not see an up\-vote button for "([^"]*)"$/ do |url|
  with_scope(".post") do
    page.should have_selector("a[href='#{url}']")
    page.should_not have_selector("a.up-vote[href='#']")
  end
end

Then /^I should not see a down\-vote button for "([^"]*)"$/ do |url|
  with_scope(".post") do
    page.should have_selector("a[href='#{url}']")
    page.should_not have_selector("a.down-vote[href='#']")
  end
end