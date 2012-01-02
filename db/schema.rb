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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120101234913) do

  create_table "species", :force => true do |t|
    t.string   "Specie_Name"
    t.string   "Sex"
    t.string   "Location"
    t.string   "County"
    t.integer  "Quantity"
    t.string   "Origin"
    t.string   "Observer"
    t.string   "Record_type"
    t.string   "Reference"
    t.string   "Comment"
    t.string   "Grid_reference"
    t.date     "Start_date"
    t.date     "End_date"
    t.string   "Determiner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password"
    t.string   "salt"
    t.boolean  "admin",              :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
