class FillOutProjectModel < ActiveRecord::Migration
  def self.up
    add_column :projects, "company_id", :integer
    add_column :projects, "status_id", :integer
    add_column :projects, "outstanding_bugs", :integer
    add_column :projects, "total_bugs", :integer
  end

  def self.down
    remove_column :projects, "company_id"
    remove_column :projects, "status_id"
    remove_column :projects, "outstanding_bugs"
    remove_column :projects, "total_bugs"
  end
end