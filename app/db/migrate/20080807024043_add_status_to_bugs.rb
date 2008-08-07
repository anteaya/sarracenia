class AddStatusToBugs < ActiveRecord::Migration
  def self.up
    add_column :bugs, "status_id", :integer
  end

  def self.down
    remove_column :bugs, "status_id"
  end
end
