class AddLaunchDateToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, "launch_date", :datetime
  end

  def self.down
    remove_column :projects, "launch_date"
  end
end
