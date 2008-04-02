class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.column :title, :string
      t.column :description, :text
      t.column :severity_id, :integer
      t.column :fixed, :boolean, :default => '0'
      t.column :date_fixed, :datetime
      t.column :project_id, :integer
      t.column :auto_submitted, :boolean, :default => '0'
      t.column :team_assigned_to, :integer
      t.column :person_assigned_to, :integer
      t.column :fixed_by, :integer
      t.column :fixed_comment, :string

      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
