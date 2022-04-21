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

ActiveRecord::Schema[7.0].define(version: 2022_04_19_043723) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "data_sources", force: :cascade do |t|
    t.string "title"
    t.text "detail"
    t.text "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_sources_goals", force: :cascade do |t|
    t.bigint "data_source_id"
    t.bigint "goal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_source_id"], name: "index_data_sources_goals_on_data_source_id"
    t.index ["goal_id"], name: "index_data_sources_goals_on_goal_id"
  end

  create_table "data_sources_tools", force: :cascade do |t|
    t.bigint "data_source_id"
    t.bigint "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_source_id"], name: "index_data_sources_tools_on_data_source_id"
    t.index ["tool_id"], name: "index_data_sources_tools_on_tool_id"
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

  create_table "policies_tools", force: :cascade do |t|
    t.bigint "policy_id"
    t.bigint "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["policy_id"], name: "index_policies_tools_on_policy_id"
    t.index ["tool_id"], name: "index_policies_tools_on_tool_id"
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

  create_table "stories_tools", force: :cascade do |t|
    t.bigint "story_id"
    t.bigint "tool_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_stories_tools_on_story_id"
    t.index ["tool_id"], name: "index_stories_tools_on_tool_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "documents", "policies"
  add_foreign_key "tools", "goals"
end
