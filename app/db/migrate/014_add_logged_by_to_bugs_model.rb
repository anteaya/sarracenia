class AddLoggedByToBugsModel < ActiveRecord::Migration
  def self.up
    add_column :bugs, "logged_by", :integer
  end

  def self.down
    remove_column :bugs, "logged_by"
  end
end
