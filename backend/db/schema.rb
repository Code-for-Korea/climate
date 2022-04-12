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

ActiveRecord::Schema[7.0].define(version: 2022_04_12_120125) do
  create_table "data_sources", force: :cascade do |t|
    t.string "title"
    t.text "detail"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.integer "policy_id", null: false
    t.text "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["policy_id"], name: "index_documents_on_policy_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "title"
    t.string "depth"
    t.text "detail"
    t.string "data_status"
    t.decimal "emission_2016"
    t.decimal "emission_2017"
    t.decimal "emission_2018"
    t.decimal "emission_2019"
    t.decimal "emission_2020"
    t.decimal "emission_2021"
    t.decimal "emission_2022"
    t.decimal "emission_goal_2030"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "policies", force: :cascade do |t|
    t.string "title"
    t.string "department"
    t.date "released"
    t.text "detail"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "press"
    t.string "author"
    t.date "published"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", force: :cascade do |t|
    t.string "title"
    t.integer "goal_id", null: false
    t.text "detail"
    t.string "key_indicator"
    t.string "key_indicator_unit"
    t.decimal "indicator_2016"
    t.decimal "indicator_2017"
    t.decimal "indicator_2018"
    t.decimal "indicator_2019"
    t.decimal "indicator_2020"
    t.decimal "indicator_2021"
    t.decimal "indicator_2022"
    t.decimal "indicator_goal_2030"
    t.string "tool_data_status"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["goal_id"], name: "index_tools_on_goal_id"
  end

  add_foreign_key "documents", "policies"
  add_foreign_key "tools", "goals"
end
