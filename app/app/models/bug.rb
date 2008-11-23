class Bug < ActiveRecord::Base
    validates_presence_of :title, :description
    validates_numericality_of :project_id, :severity_id
    belongs_to :project
    belongs_to :severity    #Needed for the one-way relationship to the Severities lookup table
    belongs_to :status, :conditions => "for='bug'"
    belongs_to :user
    named_scope :fixed, :conditions => ['fixed = ?', true]
    named_scope :active, :conditions => ['fixed = ?', false]
    
    def self.get_bugs(user, is_fixed = false)
        if !user
            return self.fixed if is_fixed
            return self.active unless is_fixed
            #self.find(:all, :include => [:severity], :conditions => ["bugs.fixed = ?", is_fixed], :order => "bugs.created_at DESC")
        else
            if is_fixed
                user.bugs.fixed
            else
                user.bugs.active
            end
            #user.bugs.find(:all, :include => [:severity], :conditions => ["bugs.fixed = ?", is_fixed], :order => "bugs.created_at DESC")
        end
    end
end
