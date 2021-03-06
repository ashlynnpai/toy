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

ActiveRecord::Schema.define(version: 20150413193847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "uid"
    t.string   "provider"
    t.string   "username"
    t.string   "oauth_token"
    t.string   "oauth_secret"
    t.datetime "oauth_expires"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "books", force: true do |t|
    t.string   "title"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "finished_on"
    t.string   "author"
    t.text     "description"
    t.string   "amazon_id"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "size"
    t.decimal  "composite",    precision: 4, scale: 1
    t.decimal  "grocery",      precision: 4, scale: 1
    t.decimal  "housing",      precision: 4, scale: 1
    t.integer  "population"
    t.decimal  "unemployment", precision: 3, scale: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "available",                            default: true
  end

  create_table "users", force: true do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
  end

end
