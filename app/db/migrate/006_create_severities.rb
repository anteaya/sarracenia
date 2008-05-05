class CreateSeverities < ActiveRecord::Migration
  def self.up
    create_table :severities do |t|
      t.column "name", :string
      t.timestamps
    end
    
    Severity.create :name => "Critical"
    Severity.create :name => "High"
    Severity.create :name => "Medium"
    Severity.create :name => "Low"
  end

  def self.down
    drop_table :severities
  end
end
