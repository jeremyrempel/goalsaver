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

  create_table "asslibs", force: :cascade do |t|
    t.integer  "users_id"
    t.string   "name",                       null: false
    t.text     "description"
    t.string   "altype",                     null: false
    t.boolean  "active",      default: true, null: false
    t.string   "currency",                   null: false
    t.integer  "user_id",                    null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["users_id"], name: "index_asslibs_on_users_id", using: :btree
  end

  create_table "goals", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.decimal  "value"
    t.string   "currency"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname",              limit: 50,  null: false
    t.string   "lname",              limit: 50,  null: false
    t.string   "email",              limit: 128, null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

  create_table "valuations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "asslib_id"
    t.integer  "year"
    t.string   "period"
    t.decimal  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "asslibs", "users"
  add_foreign_key "goals", "users"
  add_foreign_key "valuations", "asslibs"
  add_foreign_key "valuations", "users"
end
