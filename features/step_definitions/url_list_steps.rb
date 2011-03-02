Then /^I should see the list of posted URLs:$/ do |table|
  table.hashes.each do |attributes|
    Then %Q{I should see "#{attributes[:title]}" within "a[href='#{attributes[:posted_url]}']"}
    Then %Q{I should see "#{attributes[:user]}"}
  end
end

Given /^the following users exist:$/ do |table|
  table.hashes.each do |attributes|
    attributes[:password_confirmation] = attributes[:password]
    User.create!(attributes)
  end
end

Given /^the following posts exist:$/ do |table|
  table.hashes.each do |attributes|
    attributes[:user] = User.find_by_email(attributes[:user])
    Post.create!(attributes)
  end
end

Given /^there are no posts$/ do
  Post.delete_all
end
