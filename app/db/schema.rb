# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20080806150647) do

  create_table "bugs", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "severity_id"
    t.boolean  "fixed",            :default => false
    t.datetime "date_fixed"
    t.integer  "project_id"
    t.boolean  "auto_submitted",   :default => false
    t.integer  "team_assigned_to"
    t.integer  "fixed_by"
    t.text     "fixed_comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "logged_by"
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

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_user_groups", :id => false, :force => true do |t|
    t.integer "permission_id"
    t.integer "user_group_id"
  end

  create_table "profiles", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "updated_by"
    t.boolean  "is_disabled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_subscriptions", :force => true do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.boolean  "subscribed", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "status_id"
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

  create_table "user_groups", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups_users", :id => false, :force => true do |t|
    t.integer "user_group_id"
    t.integer "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
