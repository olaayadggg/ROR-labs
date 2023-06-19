# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_18_224638) do
  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "IDno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "track_id"
    t.index ["track_id"], name: "index_students_on_track_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "Name", limit: 100
    t.text "Desc"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Name"], name: "index_tracks_on_Name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "Name", limit: 100
    t.string "Email"
    t.string "Password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "students", "tracks"
end
