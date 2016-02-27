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

ActiveRecord::Schema.define(version: 20160227182829) do

  create_table "locations", force: :cascade do |t|
    t.string   "address1",   limit: 255
    t.string   "address2",   limit: 255
    t.string   "city",       limit: 255
    t.string   "state",      limit: 255
    t.string   "zip_code",   limit: 255
    t.string   "country",    limit: 255
    t.string   "phone",      limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_profile_id", limit: 4
    t.integer  "location_id",     limit: 4
    t.datetime "create_date"
    t.float    "total",           limit: 24
    t.string   "promo_code",      limit: 255
    t.string   "ship_vendor",     limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "orders", ["location_id"], name: "index_orders_on_location_id", using: :btree
  add_index "orders", ["user_profile_id"], name: "index_orders_on_user_profile_id", using: :btree

  create_table "skus", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "desc",            limit: 255
    t.float    "price",           limit: 24
    t.string   "category",        limit: 255
    t.string   "cuisine",         limit: 255
    t.string   "vendor_prime",    limit: 255
    t.string   "vendor_second",   limit: 255
    t.string   "vendor_third",    limit: 255
    t.string   "stock_photo_uri", limit: 255
    t.datetime "create_date"
    t.datetime "end_date"
    t.boolean  "out_of_stock"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "user_logins", force: :cascade do |t|
    t.string   "email_id",               limit: 255
    t.string   "password",               limit: 255
    t.string   "old_password",           limit: 255
    t.boolean  "user_verified"
    t.datetime "user_verification_date"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_login_id",      limit: 4
    t.string   "firstname",          limit: 255
    t.string   "lastname",           limit: 255
    t.datetime "user_create_date"
    t.datetime "user_last_modified"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "user_profiles", ["user_login_id"], name: "index_user_profiles_on_user_login_id", using: :btree

end
