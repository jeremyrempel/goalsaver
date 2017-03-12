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

ActiveRecord::Schema.define(version: 20161106233312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asslibs", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "name", null: false
    t.text "description"
    t.string "altype", null: false
    t.boolean "active", default: true, null: false
    t.string "currency", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_asslibs_on_user_id"
  end

  create_table "goals", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.string "name", limit: 50, null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.decimal "start_value", null: false
    t.decimal "end_value", null: false
    t.decimal "rate_of_return", default: "0.0", null: false
    t.decimal "rate_of_savings", default: "0.0", null: false
    t.string "currency", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "fname", limit: 50, null: false
    t.string "lname", limit: 50, null: false
    t.string "email", limit: 128, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", limit: 128
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

  create_table "valuations", id: :serial, force: :cascade do |t|
    t.integer "user_id"
    t.integer "asslib_id"
    t.date "date"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asslib_id"], name: "index_valuations_on_asslib_id"
    t.index ["user_id"], name: "index_valuations_on_user_id"
  end

  add_foreign_key "asslibs", "users"
  add_foreign_key "goals", "users"
  add_foreign_key "valuations", "asslibs"
  add_foreign_key "valuations", "users"
end
