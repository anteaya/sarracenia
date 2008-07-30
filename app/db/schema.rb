# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 6) do

  create_table "bugs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "severity_id"
    t.boolean  "fixed",              :default => false
    t.datetime "date_fixed"
    t.integer  "project_id"
    t.boolean  "auto_submitted",     :default => false
    t.integer  "team_assigned_to"
    t.integer  "fixed_by"
    t.text     "fixed_comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_assigned_to"
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "status_id"
    t.integer  "outstanding_bugs"
    t.integer  "total_bugs"
  end

  create_table "severities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
