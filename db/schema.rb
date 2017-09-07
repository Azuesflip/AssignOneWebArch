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

ActiveRecord::Schema.define(version: 20170907184004) do

  create_table "classes_setups", force: :cascade do |t|
    t.string "name"
    t.string "area_of_study"
    t.integer "area_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "section_number"
    t.string "semester"
    t.integer "room_number"
    t.integer "Professor_id"
    t.integer "ClassesSetup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ClassesSetup_id"], name: "index_sections_on_ClassesSetup_id"
    t.index ["Professor_id"], name: "index_sections_on_Professor_id"
  end

end
