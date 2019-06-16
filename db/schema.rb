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

ActiveRecord::Schema.define(version: 2019_06_14_170310) do

  create_table "cart_lines", force: :cascade do |t|
    t.integer "cart_id"
    t.integer "item_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_lines_on_cart_id"
    t.index ["item_id"], name: "index_cart_lines_on_item_id"
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "unit_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.integer "order_id"
    t.integer "item_id"
    t.string "name"
    t.integer "unit_price"
    t.integer "quantity"
    t.integer "subtotal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_order_lines_on_item_id"
    t.index ["order_id"], name: "index_order_lines_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id"
    t.integer "total"
    t.integer "status"
    t.string "shipping_first_name"
    t.string "shipping_last_name"
    t.string "shipping_phone"
    t.string "shipping_postal_code"
    t.string "shipping_region"
    t.string "shipping_locality"
    t.string "shipping_street_address"
    t.string "billing_first_name"
    t.string "billing_last_name"
    t.string "billing_phone"
    t.string "billing_postal_code"
    t.string "billing_region"
    t.string "billing_locality"
    t.string "billing_street_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id"
    t.string "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "type"
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "postal_code"
    t.string "region"
    t.string "locality"
    t.string "street_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
