class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :contact
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
