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

ActiveRecord::Schema.define(:version => 20110313224444) do

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "holes", :force => true do |t|
    t.integer  "parent_id"
    t.integer  "number"
    t.integer  "score"
    t.integer  "par"
    t.integer  "yards"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "parent_type", :default => "Scorecard"
    t.integer  "handicap"
  end

  add_index "holes", ["parent_id"], :name => "index_holes_on_scorecard_id"

  create_table "scorecards", :force => true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "recorded_on"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tournament_id"
  end

  create_table "tournaments", :force => true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "started_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
