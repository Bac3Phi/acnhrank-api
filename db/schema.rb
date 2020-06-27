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

ActiveRecord::Schema.define(version: 2020_06_27_070132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "villager_details", force: :cascade do |t|
    t.integer "point"
    t.bigint "villager_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["villager_id"], name: "index_villager_details_on_villager_id"
  end

  create_table "villagers", force: :cascade do |t|
    t.string "name"
    t.string "birthday"
    t.string "gender"
    t.string "icon_uri"
    t.string "image_uri"
    t.string "catch_phrase"
    t.string "personality"
    t.string "species"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "voted", default: 100
    t.string "rank", default: "F"
  end

  add_foreign_key "villager_details", "villagers"
end
