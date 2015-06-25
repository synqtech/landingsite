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

ActiveRecord::Schema.define(version: 20150624210435) do

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

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.float    "cost"
    t.float    "price"
    t.float    "msrp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "quote_lines", force: true do |t|
    t.integer  "qty"
    t.float    "discount"
    t.integer  "quote_id"
    t.integer  "product_id"
    t.string   "new_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: true do |t|
    t.string   "bill_to"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "postal_code"
    t.string   "province"
    t.string   "quote_number"
    t.text     "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.boolean  "is_paid",      default: false
    t.integer  "edit_count",   default: 0
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
    t.boolean  "third_party_inventory"
    t.boolean  "price_reduction_markdown"
    t.boolean  "civil_claim_won"
    t.boolean  "digi"
  end

end
