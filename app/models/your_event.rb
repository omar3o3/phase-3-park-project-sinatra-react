class YourEvent < ActiveRecord::Base
    has_one :friend
    belongs_to :borough
    belongs_to :event_type
end