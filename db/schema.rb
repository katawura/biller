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

ActiveRecord::Schema.define(version: 20150810224204) do

  create_table "account_entries", force: :cascade do |t|
    t.float    "time",        limit: 24
    t.integer  "customer_id", limit: 4
    t.integer  "employee_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id",  limit: 4
    t.string   "type",        limit: 255
    t.decimal  "amount",                  precision: 10
    t.string   "state",       limit: 255
  end

  create_table "accounts", force: :cascade do |t|
    t.string   "type",       limit: 255
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "about",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "zipcode",    limit: 4
    t.integer  "employees",  limit: 4
    t.decimal  "balance",                precision: 10
    t.string   "state",      limit: 255
    t.string   "city",       limit: 255
  end

  add_index "accounts", ["employees"], name: "index_accounts_on_employees", using: :btree

  create_table "employees_projects", force: :cascade do |t|
    t.integer  "employee_id", limit: 4
    t.integer  "project_id",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "customer_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",  limit: 255,   null: false
    t.integer  "item_id",    limit: 4,     null: false
    t.string   "event",      limit: 255,   null: false
    t.string   "whodunnit",  limit: 255
    t.text     "object",     limit: 65535
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

end
