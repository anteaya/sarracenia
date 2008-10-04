class Project < ActiveRecord::Base
    has_many :bugs
    belongs_to :status, :conditions => "for='project'"  #needed for one-way hookup
    belongs_to :company
    validates_presence_of :name
    
    has_many :project_subscriptions
    has_many :subscribers, :through => :project_subscriptions
end