class Friends < ActiveRecord::Migration[6.1]
  def change
    create_table :friends do |t|
      t.string :group_of_names
      t.belongs_to :your_event
    end
  end
end
