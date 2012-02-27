# some generic utility steps for use by all features.

Then /^debugger$/ do
  debugger
  puts page.body  # debugger statements cant be at the end of a block
end


Given 'the Sphinx indexes are updated' do
  # Update all indexes
  ThinkingSphinx::Test.index
  sleep(0.25) # Wait for Sphinx to catch up
end

# jump to a url without having to go through the support/paths.rb file
When /^(?:|I )jump to url (.+)$/ do |url|
    visit url
end

When /^I jump to "([^\"]*)"$/ do |url|
    visit url
end

# Given /^the database seeds "([^\"]*)"$/ do |src|
#   src ||= 'seed'
#   path = File.join(RAILS_ROOT, 'db', src)
#   seeds = Dir.glob(File.join(path, '*.{yml,csv}'))
#   #seeds = ENV['SEEDS'].split(/,/)

#   ActiveRecord::Base.establish_connection(RAILS_ENV.to_sym)
#     seeds.each do |seed_file|
#     Fixtures.create_fixtures(path, File.basename(seed_file, '.*'))
#   end
# end

Given /a seeded blank database/ do
  # sql_file = 'cucumber.sql'
  # sql_load = Rails.root.join('db', sql_file)
  # if !File.exists? sql_load
  #   `bundle exec rake cruise:db_setup SRC=db/cucumber ; bundle exec rake db:migrate RAILS_ENV=test`
  # end
  # db_config = ActiveRecord::Base.configurations[Rails.env]
  # `mysql -u #{db_config['username']} #{db_config['password'].blank? ? '' : ('-p' + db_config['password'])} #{db_config['database']} < #{sql_load}`

  # add in any additional global setup
#  Setup.assign("goto_setup_wizard", nil)
#  Setup.assign('enable_expense', 1)
#  Setup.assign('max_expense_users', 10)
#  Given "a set of standard users and roles"
end

