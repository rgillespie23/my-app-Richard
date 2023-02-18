# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_02_18_191705) do

  create_table "deerstands", force: :cascade do |t|
    t.string "stand_id"
    t.string "stand_name"
    t.string "best_wind_id"
    t.string "worst_wind_id"
    t.string "type_of_stand_id"
    t.string "acreage_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stands", force: :cascade do |t|
    t.integer "stand_id"
    t.string "stand_name"
    t.integer "best_wind_id"
    t.integer "worst_wind_id"
    t.integer "type_of_stand"
    t.integer "acreage_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
