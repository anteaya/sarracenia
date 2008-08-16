class AddTypeToStatuses< ActiveRecord::Migration
  def self.up
    add_column :statuses, "for", :string
  end

  def self.down
    remove_column :statuses, "for"
    Status.destroy_all
  end
end
