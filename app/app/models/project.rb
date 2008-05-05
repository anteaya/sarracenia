class Project < ActiveRecord::Base
    has_many :bugs
    has_one :status
    belongs_to :company
    validates_presence_of :name
end