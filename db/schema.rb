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

ActiveRecord::Schema[7.2].define(version: 2024_09_20_192841) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "circuits", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "location"
    t.integer "first_grand_prix"
    t.integer "laps"
    t.string "length"
    t.string "race_distance"
    t.string "lap_record_time"
    t.string "string"
    t.string "lap_record_driver_name"
    t.string "lap_record_year"
    t.integer "capacity"
    t.integer "opened"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
    t.string "birthdate"
    t.string "image"
    t.string "nationality"
    t.integer "number"
    t.string "career_points"
    t.integer "winnings"
    t.string "team_name"
    t.integer "championships"
    t.bigint "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_drivers_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.integer "first_team_entry"
    t.integer "world_championships"
    t.integer "pole_positions"
    t.integer "fastest_laps"
    t.string "president"
    t.string "director"
    t.string "chassis"
    t.string "engine"
    t.string "logo"
    t.string "technical_manager"
    t.string "tyres"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "drivers", "teams"
end
