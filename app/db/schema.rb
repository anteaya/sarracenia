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

ActiveRecord::Schema.define(:version => 11) do

  create_table "bugs", :force => true do |t|
    t.string   "title",              :default => "NULL"
    t.text     "description",        :default => "NULL"
    t.integer  "severity_id",        :default => 0
    t.boolean  "fixed",              :default => false
    t.datetime "date_fixed"
    t.integer  "project_id",         :default => 0
    t.boolean  "auto_submitted",     :default => false
    t.integer  "team_assigned_to",   :default => 0
    t.integer  "person_assigned_to", :default => 0
    t.integer  "fixed_by",           :default => 0
    t.text     "fixed_comment",      :default => "NULL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", :force => true do |t|
    t.string   "name",       :default => "NULL"
    t.string   "address",    :default => "NULL"
    t.string   "contact",    :default => "NULL"
    t.string   "phone",      :default => "NULL"
    t.string   "email",      :default => "NULL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", :force => true do |t|
    t.string   "name",       :default => "NULL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions_user_groups", :id => false, :force => true do |t|
    t.integer "permission_id", :default => 0
    t.integer "user_group_id", :default => 0
  end

  create_table "profiles", :force => true do |t|
    t.string   "first_name",  :default => "NULL"
    t.string   "last_name",   :default => "NULL"
    t.string   "email",       :default => "NULL"
    t.integer  "updated_by",  :default => 0
    t.boolean  "is_disabled", :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "name",             :default => "NULL"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "status_id"
    t.integer  "outstanding_bugs"
    t.integer  "total_bugs"
  end

  create_table "severities", :force => true do |t|
    t.string   "name",       :default => "NULL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", :force => true do |t|
    t.string   "name",       :default => "NULL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups", :force => true do |t|
    t.string   "name",       :default => "NULL"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups_users", :id => false, :force => true do |t|
    t.integer "user_group_id", :default => 0
    t.integer "user_id",       :default => 0
  end

  create_table "users", :force => true do |t|
    t.string   "login",            :default => "NULL"
    t.string   "crypted_password", :default => "NULL"
    t.string   "salt",             :default => "NULL"
    t.integer  "profile_id",       :default => 0
    t.integer  "updated_by",       :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
