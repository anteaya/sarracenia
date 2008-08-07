#!/usr/bin/env ruby
namespace :db do
    desc "Runs db:migrate for all environments (development, test, production)"
    task :migrate_all do
        puts "Migrating development database"
        Rake::Task["db:migrate"].invoke
        puts "Migrating test database"
        Rake::Task["db:test:clone"].invoke
        #puts "Migrating production database"
        #Rake::Task["RAILS_ENV=production db:migrate"].invoke
    end
end