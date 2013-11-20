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

ActiveRecord::Schema.define(version: 20131120000032) do

  create_table "applications", force: true do |t|
    t.integer "job_id"
    t.integer "mom_id"
  end

  create_table "companies", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "website"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.string  "overview"
  end

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
    t.boolean "status"
  end

  create_table "moms", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "years_experience"
    t.string  "email"
    t.string  "college"
    t.string  "mba"
  end

end
