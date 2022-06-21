class YourEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :your_events do |t|
      t.integer :event_id
      t.string :event_location
      t.string :event_name
      t.string :start_date_time
      t.string :end_date_time
      t.belongs_to :borough
      t.belongs_to :event_type
    end
  end
end