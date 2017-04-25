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

ActiveRecord::Schema.define(version: 20170425173920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "event_title"
    t.string   "event_type"
    t.date     "event_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.string   "todo1"
    t.string   "todo2"
    t.string   "todo3"
    t.string   "todo4"
    t.string   "todo5"
    t.string   "todo6"
    t.string   "todo7"
    t.string   "todo8"
    t.string   "todo9"
    t.string   "todo10"
    t.string   "todo11"
    t.string   "todo12"
    t.string   "todo13"
    t.string   "todo14"
    t.string   "todo15"
    t.string   "todo16"
    t.string   "todo17"
    t.string   "todo18"
    t.string   "todo19"
    t.string   "todo20"
    t.index ["user_id"], name: "index_events_on_user_id", using: :btree
  end

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "item_title"
    t.string   "item_type"
    t.date     "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "event_id"
    t.index ["event_id"], name: "index_items_on_event_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["token"], name: "index_users_on_token", unique: true, using: :btree
  end

  add_foreign_key "events", "users"
  add_foreign_key "examples", "users"
  add_foreign_key "items", "events"
end
