#!/usr/bin/env ruby
module ActiveRecord
    class Base
        def self.to_select(conditions = nil)
            find(:all, :conditions => conditions).collect { |x| [x.name, x.id]}
        end
    end
end

class Array
    def to_select
        self.collect { |x| [x.name, x.id] }
    end
end
