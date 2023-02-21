# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_02_18_061751) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "category"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "tables_id"
    t.string "status"
    t.integer "total"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tables_id"], name: "index_orders_on_tables_id"
  end

  create_table "orders_items", force: :cascade do |t|
    t.bigint "orders_id"
    t.bigint "items_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["items_id"], name: "index_orders_items_on_items_id"
    t.index ["orders_id"], name: "index_orders_items_on_orders_id"
  end

  create_table "tables", force: :cascade do |t|
    t.string "name"
    t.integer "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end