# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
    def distance_of_time_in_words_from_now(to_time, include_seconds = false)
        if Time.now < to_time
            "in #{distance_of_time_in_words(Time.now, to_time, include_seconds)}"
        else
            distance_of_time_in_words_from_now(to_time) 
        end
    end
end
