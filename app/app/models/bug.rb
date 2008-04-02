class Bug < ActiveRecord::Base
    validates_presence_of :title, :description
    validates_numericality_of :project_id, :severity_id
    belongs_to :project
end
