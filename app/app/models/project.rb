class Project < ActiveRecord::Base
    has_many :bugs
    belongs_to :status
    belongs_to :company
    validates_presence_of :name
    has_many :subscribers, :through => :project_subscriptions
end