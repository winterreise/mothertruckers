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

ActiveRecord::Schema.define(version: 20160519154958) do

  create_table "trucks", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "email"
    t.string   "website"
    t.string   "cuisine"
    t.datetime "creation_date"
    t.string   "image"
    t.string   "image_small"
    t.string   "image_large"
    t.boolean  "no_longer_in_business"
    t.datetime "open_time"
    t.datetime "close_time"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "intersection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
