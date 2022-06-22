# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_21_202711) do

  create_table "boroughs", force: :cascade do |t|
    t.string "borough_name"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "event_type_name"
  end

  create_table "friends", force: :cascade do |t|
    t.string "group_of_names"
    t.integer "your_event_id"
    t.index ["your_event_id"], name: "index_friends_on_your_event_id"
  end

  create_table "your_events", force: :cascade do |t|
    t.integer "event_id"
    t.string "event_location"
    t.string "event_name"
    t.string "start_date_time"
    t.string "end_date_time"
    t.integer "borough_id"
    t.integer "event_type_id"
    t.index ["borough_id"], name: "index_your_events_on_borough_id"
    t.index ["event_type_id"], name: "index_your_events_on_event_type_id"
  end

end
