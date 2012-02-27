When /^I wait for (\d+) seconds?$/ do |secs|
  sleep secs.to_i
end

# this doesn't work.  how to trigger a hover event?
When /^I hover over "([^"]*)"$/ do |link_text|
  # this should work in future versions but no in current stable
  puts %Q{ $('#{link_text}').trigger('mouseover'); }
  page.evaluate_script %Q{ $('#{link_text}').trigger('mouseover'); }
end

When /^I click on the "([^"]*)" autocomplete option$/ do |link_text|
  #page.evaluate_script %Q{ $('.ui-menu-item a:contains("#{link_text}")').trigger("mouseenter").click(); }
  page.evaluate_script %Q{ $('.ui-menu-item a:contains("#{link_text}")').trigger("click"); }
end

When /^I focus on the "([^"]*)" field$/ do |selector|

end

When /^(?:|I )click on "([^"]*)"(?: within "([^"]*)")?$/ do |link, selector|
  with_scope(selector) do
    click_link(link)
  end
end

When /^(?:|I )open the account picker within "([^"]*)"$/ do |sel|
  #page.evaluate_script %Q{ $('#{sel} .acct_picker a').click(); }
  page.driver.browser.execute_script %Q{ $('#{sel} .acct_picker a').click(); }
#  debugger
#  find(:css, ".acct_picker a").click
  puts
end

# to handle confirm dialog popups
#page.evaluate_script('window.confirm = function() { return true; }')
#page.click('Remove')

