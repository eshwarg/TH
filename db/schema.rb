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

ActiveRecord::Schema.define(:version => 20120305181231) do

  create_table "census", :force => true do |t|
    t.string   "section_id"
    t.string   "year"
    t.integer  "no_of_plants"
    t.date     "census_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "clones", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estates", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "plant_spacings", :force => true do |t|
    t.string   "spacing"
    t.integer  "no_of_plants"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "plucking_rounds", :force => true do |t|
    t.integer  "section_id"
    t.date     "plucking_date"
    t.integer  "green_leaves_harvested"
    t.integer  "pluckers"
    t.integer  "area_covered"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "prunes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "section_clones", :force => true do |t|
    t.integer  "section_id"
    t.integer  "clone_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sections", :force => true do |t|
    t.integer  "estate_id"
    t.string   "plant_spacing_id"
    t.integer  "name"
    t.string   "code"
    t.float    "area"
    t.string   "year_of_plant"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "yield_prunes", :force => true do |t|
    t.integer  "yield_id"
    t.integer  "prune_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "yields", :force => true do |t|
    t.integer  "section_id"
    t.integer  "proposed"
    t.integer  "actual"
    t.string   "year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
