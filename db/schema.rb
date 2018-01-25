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

ActiveRecord::Schema.define(version: 20180125141251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.date "date"
    t.integer "pickup_start"
    t.integer "pickup_end"
    t.string "food_description"
    t.boolean "request_pending"
    t.integer "dropoff_latest"
    t.integer "driver_pickup_time"
    t.integer "driver_dropoff_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_orders", force: :cascade do |t|
    t.bigint "user_id_id"
    t.bigint "order_id_id"
    t.index ["order_id_id"], name: "index_user_orders_on_order_id_id"
    t.index ["user_id_id"], name: "index_user_orders_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "photo"
    t.bigint "driver_admin_id_id"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_admin_id_id"], name: "index_users_on_driver_admin_id_id"
  end

end
