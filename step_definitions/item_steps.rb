
Then /^I should have an item "([^\"]*)"$/ do |name|
  Item.find_by_name! name
end

