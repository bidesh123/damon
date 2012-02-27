#
# seed.rb
#  This file is loaded once at the start of the cucumber run.
#  We setup scenario Before and After hooks to handle the initial db state
#  see https://github.com/cucumber/cucumber/wiki/Hooks

# Assume test db is seeded (via rake cruise:db_setup)
# dump the seeded db to sql.
def dump_db_to_sql sql_file = 'cucumber.sql'
  sql_load = Rails.root.join('features/setup-sql', sql_file)
  db_config = ActiveRecord::Base.configurations[Rails.env]
  `mysqldump -u#{db_config['username']} #{db_config['password'].blank? ? '' : ('-p' + db_config['password'])} #{db_config['database']} > #{sql_load}`
end
def load_db_from_sql sql_file = 'cucumber.sql'
  sql_load = Rails.root.join('features/setup-sql', sql_file)
  db_config = ActiveRecord::Base.configurations[Rails.env]
  `mysql -u #{db_config['username']} #{db_config['password'].blank? ? '' : ('-p' + db_config['password'])} #{db_config['database']} < #{sql_load}`
end

dump_db_to_sql

Before do
  load_db_from_sql
end

After do
  # nothing for now.
end

at_exit do
  load_db_from_sql
end