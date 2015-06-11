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

ActiveRecord::Schema.define(version: 20150611002320) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: true do |t|
    t.string   "cname"
    t.string   "ccompany"
    t.string   "cpphone"
    t.string   "csphone"
    t.string   "csaddr"
    t.string   "ccity"
    t.string   "czip"
    t.string   "cemail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cstate"
    t.integer  "tech_id"
    t.integer  "workorder_id"
  end

  add_index "customers", ["tech_id"], name: "index_customers_on_tech_id", using: :btree
  add_index "customers", ["workorder_id"], name: "index_customers_on_workorder_id", using: :btree

  create_table "techs", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "fname"
    t.string   "lname"
    t.string   "title"
    t.string   "phone"
  end

  add_index "techs", ["email"], name: "index_techs_on_email", unique: true, using: :btree
  add_index "techs", ["reset_password_token"], name: "index_techs_on_reset_password_token", unique: true, using: :btree

  create_table "workorders", force: true do |t|
    t.integer  "woid"
    t.string   "cdmake"
    t.string   "cdmodel"
    t.string   "cdaccr"
    t.text     "cdesc"
    t.text     "cdpass"
    t.string   "ccat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
