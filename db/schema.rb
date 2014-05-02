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

ActiveRecord::Schema.define(version: 20140502002456) do

  create_table "goal_updates", force: true do |t|
    t.integer  "goal_id"
    t.text     "entry"
    t.date     "update_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goals", force: true do |t|
    t.string   "goal"
    t.text     "reason"
    t.date     "start"
    t.date     "end"
    t.string   "recurrance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_goals", force: true do |t|
    t.integer  "goal_id"
    t.integer  "child_goal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "age"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
