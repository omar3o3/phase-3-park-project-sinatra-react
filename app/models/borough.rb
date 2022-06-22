class Borough < ActiveRecord::Base
    has_many :your_events
    has_many :event_types , through: :your_events
end