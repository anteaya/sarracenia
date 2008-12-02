class Bug < ActiveRecord::Base
    validates_presence_of :title, :description
    validates_numericality_of :project_id, :severity_id
    belongs_to :project
    belongs_to :severity    #Needed for the one-way relationship to the Severities lookup table
    belongs_to :status, :conditions => "for='bug'"
    belongs_to :user
    named_scope :fixed, :conditions => ['fixed = ?', true]
    named_scope :active, :conditions => ['fixed = ?', false]
    
    def self.get_bugs(is_fixed = false)
        if is_fixed
            self.fixed
        else
            self.active 
        end
    end
end
