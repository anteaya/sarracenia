class ProjectSubscription < ActiveRecord::Base
    belongs_to :project
    belongs_to :subscriber, :class_name => "User", :foreign_key => "user_id"
end
