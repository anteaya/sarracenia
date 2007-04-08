class User < ActiveRecord::Base
  belongs_to :company
  has_many :bugs
  has_and_belongs_to_many :projects
end
