#!/usr/bin/env ruby
namespace :db do
    desc "Runs db:migrate for all environments (development, test, production)"
    task :migrate_all do
        puts "Migrating development database"
        Rake::Task["db:migrate"].invoke
        puts "Migrating test database"
        Rake::Task["db:test:clone"].invoke
        puts "Migrating production database"
         #task :clone => %w(db:schema:dump db:test:purge) do
 	ActiveRecord::Base.establish_connection(ActiveRecord::Base.configurations['production'])
 	ActiveRecord::Schema.verbose = false
 	Rake::Task["db:schema:load"].invoke
    end
end