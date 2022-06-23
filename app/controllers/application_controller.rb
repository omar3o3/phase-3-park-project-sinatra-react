require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  post "/add-event" do

    Borough.find_or_create_by(borough_name: params[:event][:event_borough])

    EventType.find_or_create_by(event_type_name: params[:event][:event_type])

    if !YourEvent.exists?(event_id: params[:event][:event_id])
      YourEvent.create(
        event_id: params[:event][:event_id],
        event_location: params[:event][:event_location],
        event_name: params[:event][:event_name],
        start_date_time: params[:event][:start_date_time],
        end_date_time: params[:event][:end_date_time],
        borough_id: Borough.find_by(borough_name: params[:event][:event_borough]).id,
        event_type_id: EventType.find_by(event_type_name: params[:event][:event_type]).id
      )
      Friend.create(
        group_of_names: params[:inputState],
        your_event_id: YourEvent.find_by(event_id: params[:event][:event_id]).id
      )
    else
      puts 'i already exist'
    end
  end

  get "/your-events" do
    YourEvent.all.to_json
  end

  get "/boroughs" do
    Borough.all.to_json
  end

  get "/event_types" do
    EventType.all.to_json
  end

  get "/friends" do
    Friend.all.to_json
  end

  patch "/edit-friends/:id" do
    puts params[:text]
    params[:text].to_json
  end

end