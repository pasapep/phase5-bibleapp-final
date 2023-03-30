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

ActiveRecord::Schema[7.0].define(version: 2023_03_29_185435) do
  create_table "bibles", force: :cascade do |t|
    t.string "book"
    t.integer "Chapters"
    t.integer "Verse"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.integer "user_id"
    t.integer "progress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_statuses_on_user_id"
  end

  create_table "tablebooks", force: :cascade do |t|
    t.integer "bible_id", null: false
    t.integer "user_id", null: false
    t.string "date_started"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bible_id"], name: "index_tablebooks_on_bible_id"
    t.index ["user_id"], name: "index_tablebooks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "verses", force: :cascade do |t|
    t.string "verse"
    t.text "details"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_verses_on_user_id"
  end

  add_foreign_key "statuses", "users"
  add_foreign_key "tablebooks", "bibles"
  add_foreign_key "tablebooks", "users"
  add_foreign_key "verses", "users"
end
