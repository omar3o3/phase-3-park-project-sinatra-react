class Boroughs < ActiveRecord::Migration[6.1]
  def change
    create_table :boroughs do |t|
      t.string :borough_name
    end
  end
end
