class Project < ActiveRecord::Base
    has_many :bugs
end
