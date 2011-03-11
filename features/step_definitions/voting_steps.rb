Then /^I should see an up\-vote button for "([^"]*)"$/ do |url|
  page.should have_xpath("//*[@class='post' and td/a/@href='#{url}' and td/a[@href='#' and @class='up-vote']]")
end

Then /^I should see a down\-vote button for "([^"]*)"$/ do |url|
  page.should have_xpath("//*[@class='post' and td/a/@href='#{url}' and td/a[@href='#' and @class='down-vote']]")
end

Then /^I should not see an up\-vote button for "([^"]*)"$/ do |url|
  page.should_not have_xpath("//*[@class='post' and td/a/@href='#{url}' and td/a[@href='#' and @class='up-vote']]")
end

Then /^I should not see a down\-vote button for "([^"]*)"$/ do |url|
  page.should_not have_xpath("//*[@class='post' and td/a/@href='#{url}' and td/a[@href='#' and @class='down-vote']]")
end
