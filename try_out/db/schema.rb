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

ActiveRecord::Schema.define(version: 20170307104851) do

  create_table "carts", force: :cascade do |t|
    t.integer  "Item_id"
    t.integer  "Order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantity"
    t.index ["Item_id"], name: "index_carts_on_Item_id"
    t.index ["Order_id"], name: "index_carts_on_Order_id"
  end

  create_table "clients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grocers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price_per_unit", precision: 12, scale: 3
    t.string   "unit"
    t.integer  "units_in_stock"
    t.integer  "grocer_id"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["grocer_id"], name: "index_items_on_grocer_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "Grocer_id"
    t.integer  "Client_id"
    t.integer  "Order_status_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["Client_id"], name: "index_orders_on_Client_id"
    t.index ["Grocer_id"], name: "index_orders_on_Grocer_id"
    t.index ["Order_status_id"], name: "index_orders_on_Order_status_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_type"
    t.string   "name"
    t.string   "address"
    t.string   "phone_no"
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
