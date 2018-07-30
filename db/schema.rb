# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_30_211427) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.string "subject"
    t.string "action"
    t.string "object"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "existents", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "existent_id"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_scenarios_on_event_id"
    t.index ["existent_id"], name: "index_scenarios_on_existent_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.bigint "scenario_id"
    t.bigint "existent_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_stories_on_event_id"
    t.index ["existent_id"], name: "index_stories_on_existent_id"
    t.index ["scenario_id"], name: "index_stories_on_scenario_id"
  end

  add_foreign_key "scenarios", "events"
  add_foreign_key "scenarios", "existents"
  add_foreign_key "stories", "events"
  add_foreign_key "stories", "existents"
  add_foreign_key "stories", "scenarios"
end
