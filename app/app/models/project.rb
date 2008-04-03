class Project < ActiveRecord::Base
    has_many :bugs
    validates_presence_of :name
end