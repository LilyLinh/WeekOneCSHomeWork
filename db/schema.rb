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

ActiveRecord::Schema.define(version: 20161017173509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.string   "section"
    t.string   "remote_image_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "quantity"
    t.integer  "food_item_id"
    t.integer  "order_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["food_item_id"], name: "index_order_items_on_food_item_id", using: :btree
    t.index ["order_id"], name: "index_order_items_on_order_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "confirm_at"
  end

  add_foreign_key "order_items", "food_items"
  add_foreign_key "order_items", "orders"
end
