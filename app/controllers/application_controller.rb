require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/add-event" do
    # puts params
    # puts params[:event][:event_id]
    # puts params[:event.event_location]

    Borough.find_or_create_by(borough_name: params[:event][:event_borough])

    EventType.find_or_create_by(event_type_name: params[:event][:event_type])

    YourEvent.create(
      event_id: params[:event][:event_id],
      event_location: params[:event][:event_location],
      event_name: params[:event][:event_name],
      start_date_time: params[:event][:start_date_time],
      end_date_time: params[:event][:end_date_time],
      borough_id: Borough.find_by(borough_name: params[:event][:event_borough]).id,
      event_type_id: EventType.find_by(event_type_name: params[:event][:event_type]).id
    )

    # Friend.create(
    #   group_of_names: params[:friend_group]
    #   your_event_id: YourEvent.all.find_by( = params[:])
    # )

  end
end