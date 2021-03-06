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

ActiveRecord::Schema.define(version: 20170726183735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "data_fingerprint"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type", using: :btree
  end

  create_table "communities", force: :cascade do |t|
    t.string   "name"
    t.text     "overview"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "highschool"
    t.string   "middleschool"
    t.string   "elementaryschool"
    t.string   "school_title"
    t.text     "content"
    t.integer  "sort"
    t.string   "map"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.date     "closing_date"
    t.text     "message"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "community"
  end

  create_table "features", force: :cascade do |t|
    t.string   "name"
    t.integer  "home_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_images", force: :cascade do |t|
    t.string   "image"
    t.integer  "home_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.text     "image_data"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "homes", force: :cascade do |t|
    t.string   "community"
    t.string   "lot"
    t.string   "price"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "description"
    t.string   "sqft"
    t.string   "stories"
    t.string   "bedrooms"
    t.string   "baths"
    t.string   "garage"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "plan"
    t.integer  "community_id"
    t.integer  "sort"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "slug"
    t.index ["slug"], name: "index_homes_on_slug", using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "home_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
