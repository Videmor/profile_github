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

ActiveRecord::Schema.define(version: 20140119051000) do

  create_table "experiences", force: true do |t|
    t.integer  "skill_id",               null: false
    t.integer  "user_id",                null: false
    t.integer  "repository", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "experiences", ["skill_id"], name: "index_experiences_on_skill_id", using: :btree
  add_index "experiences", ["user_id"], name: "index_experiences_on_user_id", using: :btree

  create_table "relationships", force: true do |t|
    t.integer  "followed_id", null: false
    t.integer  "follower_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "report_cards", force: true do |t|
    t.string   "name",       null: false
    t.string   "url",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reputations", force: true do |t|
    t.integer  "qualifier_id",             null: false
    t.integer  "qualified_id",             null: false
    t.integer  "points",       default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username",                   null: false
    t.string   "email",                      null: false
    t.string   "fname"
    t.string   "lname"
    t.string   "avatar"
    t.string   "headline"
    t.text     "bio"
    t.string   "website"
    t.string   "location"
    t.boolean  "enabled",    default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
