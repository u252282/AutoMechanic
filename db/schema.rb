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

ActiveRecord::Schema.define(version: 20160605041126) do

  create_table "feeds", force: :cascade do |t|
    t.integer  "job_id"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "garages", force: :cascade do |t|
    t.integer  "zipcode"
    t.string   "state"
    t.string   "city"
    t.string   "address_line_2"
    t.integer  "garage_code"
    t.string   "phone_number"
    t.string   "address_line_1"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hours_of_operations", force: :cascade do |t|
    t.integer  "garage_id"
    t.integer  "close_time"
    t.integer  "open_time"
    t.string   "day_of_the_week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_lists", force: :cascade do |t|
    t.integer  "job_type_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_types", force: :cascade do |t|
    t.integer  "repair_time_minutes"
    t.string   "description"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: :cascade do |t|
    t.boolean  "completed"
    t.boolean  "started"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "message_id"
    t.integer  "feed_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "timeslots", force: :cascade do |t|
    t.string   "job_id"
    t.integer  "mechanic_id"
    t.datetime "timeslot"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "garage_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "zipcode"
    t.string   "state"
    t.string   "city"
    t.string   "address_line_2"
    t.string   "address_line_1"
    t.string   "phone_number"
    t.integer  "number_of_visits"
    t.integer  "garage_id"
    t.string   "role"
    t.integer  "garage_code_employee"
    t.string   "name"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vehicles", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "notes"
    t.string   "color"
    t.string   "mileage"
    t.string   "year"
    t.string   "model"
    t.string   "make"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
