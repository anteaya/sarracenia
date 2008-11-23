# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
    def distance_of_time_in_words_from_now(to_time, include_seconds = false)
        unless to_time.nil?
            if Time.now < to_time
                "Launching in #{distance_of_time_in_words(Time.now, to_time, include_seconds)}"
            else
                "Launched #{distance_of_time_in_words(to_time, Time.now, include_seconds)} ago"
                #distance_of_time_in_words_from_now(to_time) 
            end
        end
    end
end
