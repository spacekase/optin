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

ActiveRecord::Schema.define(version: 20131209233056) do

  create_table "applications", force: true do |t|
    t.integer "job_id"
    t.integer "mom_id"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "website"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "overview"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "companies", ["email"], name: "index_companies_on_email", unique: true
  add_index "companies", ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true

  create_table "jobs", force: true do |t|
    t.integer "company_id"
    t.string  "title"
    t.string  "industry"
    t.string  "function"
    t.integer "budget"
    t.text    "description"
    t.string  "location"
    t.date    "start_date"
    t.date    "end_date"
    t.integer "hours_per_week"
  end

  create_table "moms", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "years_experience"
    t.string   "email"
    t.string   "college"
    t.string   "mba"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "moms", ["email"], name: "index_moms_on_email", unique: true
  add_index "moms", ["reset_password_token"], name: "index_moms_on_reset_password_token", unique: true

end
