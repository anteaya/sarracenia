class AddTypeToStatusesAndSeedTable < ActiveRecord::Migration
  def self.up
    add_column :statuses, "type", :string
  end
  Status.create(:name => 'Open', :type => 'bug')
  Status.create(:name => 'Closed', :type => 'bug')
  Status.create(:name => 'Resolved', :type => 'bug')
  Status.create(:name => "Not an Issue", :type => 'bug')
  Status.create(:name => 'New', :type => 'project')
  Status.create(:name => 'In Progress', :type => 'project')
  Status.create(:name => 'Launched', :type => 'project')

  def self.down
    remove_column :statuses, "type"
  end
end
