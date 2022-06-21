class EventType < ActiveRecord::Base
    has_many :your_events
    has_many :boroughs , through: :your_events
end