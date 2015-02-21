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

ActiveRecord::Schema.define(version: 20150221002611) do

  create_table "distributors", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "phone"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "company"
    t.string   "zip"
    t.string   "province"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
  end

  create_table "roi_surveys", force: true do |t|
    t.integer  "store_sq_ft"
    t.integer  "haba"
    t.integer  "cctv"
    t.string   "walking_svc"
    t.boolean  "existing_eas"
    t.integer  "eas_effective"
    t.integer  "eas_tags_per_month"
    t.integer  "total_weekly_sales"
    t.integer  "meat_sales_percent"
    t.integer  "num_pos_terminals"
    t.integer  "num_exits"
    t.integer  "num_exits_6_feet"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ey"
    t.integer  "exit_width_ft"
    t.string   "lpo_hours"
  end

end
