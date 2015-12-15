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

ActiveRecord::Schema.define(version: 20151214231953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customer_orders", force: :cascade do |t|
    t.datetime "order_placed_datetime"
    t.datetime "order_delivered_datetime"
    t.decimal  "order_shipping_charges"
    t.text     "order_details"
    t.string   "order_status_code"
    t.integer  "customer_id"
    t.string   "shipping_method"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "customer_orders", ["customer_id"], name: "index_customer_orders_on_customer_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "street_address"
    t.string   "building_number"
    t.string   "postal_code"
    t.string   "city"
    t.string   "country"
    t.string   "country_code"
    t.string   "phone_number"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "time_zone"
    t.date     "birthday"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "item_order_quantity"
    t.integer  "product_id"
    t.integer  "customer_order_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "order_items", ["customer_order_id"], name: "index_order_items_on_customer_order_id", using: :btree
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "currency"
    t.float    "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  add_foreign_key "customer_orders", "customers"
  add_foreign_key "order_items", "customer_orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "products", "categories"
end
