class Bug < ActiveRecord::Base
    validates_presence_of :title, :description
    validates_numericality_of :project_id, :severity_id
    belongs_to :project
    belongs_to :severity    #Needed for the one-way relationship to the Severities lookup table
    belongs_to :user
    
    def self.get_bugs(is_fixed = false)
        self.find(:all, :include => [:severity], :conditions => ["bugs.fixed = ?", is_fixed], :order => "bugs.created_at DESC")
    end
end
