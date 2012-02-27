Given /^the admin enables expenses$/ do
  visit "/session/new"
  login, password = 'coupasupport', 'CoupaSupport1'
  When "I fill in \"user_login\" with \"#{login}\""
  And "I fill in \"user_password\" with \"#{password}\""
  And "I press \"Sign In\""
  visit '/support'
  And "fill in \"max_expense_users\" with \"10\""
  And "check \"enable_expense\""
  save_and_open_page
end

# We can have the initial starting conditions from:
# seed database:  objects are correct since they were created with the ui, track db migrations, complex
# In code: either directly in steps we can create objects or something like a factory.  it may be difficult to create
# the objects needed for complex setups.
Given /a set of standard users and roles/ do
  # std roles: "Guest", "Admin", "User", "Buyer", "Accounts Payable", "Central Receiving",
  # "Accounting Supervisor", "Edit as Approver", "Inventory Manager", "Supplier", "Dashboard"
  Given 'a user "purchasing_user" with roles "User"'
  Given 'a user "buyer" with roles "User,Buyer"'
  Given 'a user "manager" with roles "User"'
  Given 'a user "ultimate_approver" with roles "User"'
  Given 'a user "admin" with roles "User,Admin"'
end

Given /a configuration for basic company/ do
  # company info
  #set company name, address, default tz
  # set currency (exchange rates), UOM, Departments, commodities,

  # accounts
  #
  # items
  # approval chains
  # custom fields
  # notifications
  # budgets
  # inventory (warehouse)
  # suppliers
end


Given /^the Setup variable "([^\"]*)" is set to "([^\"]*)"$/ do |key, val|
  val = nil if val.blank? || val=='nil'
  Setup.assign(key, val)
end

# creates a user if needed.  Will not create roles, but will assign them to the user if needed.
# user - login
# roles - comma separated list of role names (case sensitive)
# attributes - hash of attributes to set on the user
Given /^a user "([^\"]*)" with roles "([^\"]*)"( and attributes "([^\"]*)")?$/ do |username, roles, dummy, attributes|
  u = User.find_by_login username
  if !u
    u = User.new :login=>username, :email=>"#{username}@example.com",
          :firstname=>"#{username}", :lastname=>"#{username}", :verified=>true
    u.save!
    u.change_password username
    u.save false
  end

  rs = roles.split(',').map{|i|i.strip}.map {|i| Role.unscoped.find_by_name i }
  rs.each do |role|
    u.roles << role unless u.roles.include? role  # dont add again if it's already there
  end
  if !attributes.blank?
    attrs = attributes.split(',').map {|i| i.strip }
    attrs.each { |i|
      u.send i
    }
  end
end

Given /^I login as "([^"]*)"$/ do |user|  # assume password is the same as the username
  Given "I am logged in as \"#{user}\""
end

Given /^the user "([^\"]*)" has the password "([^\"]*)"$/ do |username, password|
  u = User.find_by_login! username
  u.change_password(password)
  u.save(:validate => false)
end

# Why use the slower methods instead of setting User.current_user = some_user?
#  - because using culerity as the driver to test javascript not only forces us
#  to stop using transactions (boo hiss) we also lose the ability to set session variables
#  directly in the server since it becomes a separate process.
Given /^I am logged in as "([^\"]*)"( with the password of "([^\"]*)")?$/ do |login, dummy, password|
  visit "/sessions/destroy"
  password = 'password' if password.blank?
  And "the user \"#{login}\" has the password \"#{password}\""
  visit "/session/new"
  When "I fill in \"user_login\" with \"#{login}\""
  And "I fill in \"user_password\" with \"#{password}\""
  And "I press \"Sign In\""
end

