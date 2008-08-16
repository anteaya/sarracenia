class SeedStatusTable < ActiveRecord::Migration
  def self.up
  Status.create!(:name => 'Open', :for => 'bug')
  Status.create!(:name => 'Closed', :for=> 'bug')
  Status.create!(:name => 'Resolved', :for=> 'bug')
  Status.create!(:name => "Not an Issue", :for=> 'bug')
  Status.create!(:name => 'New', :for => 'project')
  Status.create!(:name => 'In Progress', :for=> 'project')
  Status.create!(:name => 'Launched', :for => 'project')
  end

  def self.down
    Status.destroy_all
  end
end
