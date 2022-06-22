class EventTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :event_types do |t|
      t.string :event_type_name
    end
  end
end
