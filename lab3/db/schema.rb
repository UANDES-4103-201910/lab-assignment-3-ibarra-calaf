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

ActiveRecord::Schema.define(version: 2019_03_28_003515) do

  create_table "event_informations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "start_date"
    t.integer "event_venue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_venue_id"], name: "index_event_informations_on_event_venue_id"
  end

  create_table "event_venues", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.integer "amount_paid"
    t.integer "ticket_type_information_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_ticket_orders_on_event_id"
    t.index ["ticket_type_information_id"], name: "index_ticket_orders_on_ticket_type_information_id"
    t.index ["user_id"], name: "index_ticket_orders_on_user_id"
  end

  create_table "ticket_type_informations", force: :cascade do |t|
    t.integer "event_id"
    t.integer "price"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_ticket_type_informations_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.integer "phone"
    t.string "password"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
