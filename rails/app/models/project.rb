class Project < ActiveRecord::Base
  has_many :bugs
  has_and_belongs_to_many :users
  belongs_to :company
end
