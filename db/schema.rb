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

ActiveRecord::Schema.define(version: 20171010204236) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "chapter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_steps_on_chapter_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_chapters", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "chapters_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapters_id"], name: "index_users_chapters_on_chapters_id"
    t.index ["users_id"], name: "index_users_chapters_on_users_id"
  end

  create_table "users_steps", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "steps_id"
    t.boolean "completion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["steps_id"], name: "index_users_steps_on_steps_id"
    t.index ["users_id"], name: "index_users_steps_on_users_id"
  end

  add_foreign_key "steps", "chapters"
end
