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

ActiveRecord::Schema[7.1].define(version: 2025_01_01_000004) do
  create_table "blog_posts", force: :cascade do |t|
    t.string "title", null: false
    t.string "slug", null: false
    t.text "content"
    t.string "status", default: "draft"
    t.string "source_api"
    t.text "keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_blog_posts_on_slug", unique: true
  end

  create_table "call_logs", force: :cascade do |t|
    t.integer "call_session_id", null: false
    t.integer "phone_number_id", null: false
    t.string "twilio_call_sid"
    t.string "status", default: "initiated"
    t.integer "duration", default: 0
    t.datetime "started_at"
    t.datetime "ended_at"
    t.text "call_transcript"
    t.text "error_message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_session_id"], name: "index_call_logs_on_call_session_id"
    t.index ["phone_number_id"], name: "index_call_logs_on_phone_number_id"
    t.index ["twilio_call_sid"], name: "index_call_logs_on_twilio_call_sid"
  end

  create_table "call_sessions", force: :cascade do |t|
    t.string "name", null: false
    t.string "status", default: "pending"
    t.integer "total_numbers", default: 0
    t.integer "completed_calls", default: 0
    t.integer "failed_calls", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string "number", null: false
    t.string "status", default: "pending"
    t.integer "attempts", default: 0
    t.datetime "last_called_at"
    t.integer "call_session_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["call_session_id"], name: "index_phone_numbers_on_call_session_id"
    t.index ["number", "call_session_id"], name: "index_phone_numbers_on_number_and_call_session_id", unique: true
  end

  add_foreign_key "call_logs", "call_sessions"
  add_foreign_key "call_logs", "phone_numbers"
  add_foreign_key "phone_numbers", "call_sessions"
end
