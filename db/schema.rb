# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151028104243) do

  create_table "apparts", force: :cascade do |t|
    t.boolean  "room_type"
    t.string   "property_type"
    t.integer  "accommodates"
    t.string   "city"
    t.string   "title"
    t.integer  "bedroom_nb"
    t.integer  "beds_nb"
    t.float    "price"
    t.string   "adress"
    t.integer  "zip_code"
    t.string   "country"
    t.string   "amenities"
    t.string   "images"
    t.string   "images1"
    t.string   "images2"
    t.string   "images3"
    t.string   "images4"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
  end

  add_index "apparts", ["user_id"], name: "index_apparts_on_user_id"

  create_table "create_roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.text     "post"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "surname"
    t.date     "date_birth"
    t.string   "gender"
    t.string   "phone"
    t.string   "adress"
    t.integer  "zip_code"
    t.string   "town"
    t.string   "country"
    t.date     "profile_creation"
    t.boolean  "role_guest"
    t.boolean  "role_host"
    t.boolean  "role_both"
    t.text     "description"
    t.string   "langage"
    t.string   "photos"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
