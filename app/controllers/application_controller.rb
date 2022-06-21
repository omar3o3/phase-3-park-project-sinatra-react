require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/add-event" do
    # binding.pry
    puts params
    # YourEvent.create(
      # event_borough: params[:event_borough],
      # event_id: event.event_id,
      # event_location: event.event_location,
      # event_name: event.event_name,
      # event_type: event.event_type,
      # start_date_time: event.start_date_time,
      # end_date_time: event.end_date_time,
    # )
  end

end
