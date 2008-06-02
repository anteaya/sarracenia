class ChangeTheForeignKeyName < ActiveRecord::Migration
  def self.up
    remove_column :bugs, "person_assigned_to"
    add_column :bugs, "user_id", :integer
  end

  def self.down
    remove_column :bugs, "user_id"
    add_column :bugs, "person_assigned_to", :integer
  end
end
