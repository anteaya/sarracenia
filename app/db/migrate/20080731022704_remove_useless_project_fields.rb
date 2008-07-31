class RemoveUselessProjectFields < ActiveRecord::Migration
  def self.up
    remove_column :projects, "outstanding_bugs"
    remove_column :projects, "total_bugs"
  end

  def self.down
    add_column :projects, "outstanding_bugs", :integer
    add_column :projects, "total_bugs", :integer
  end
end
