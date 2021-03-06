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

ActiveRecord::Schema.define(version: 2018_06_24_204436) do

  create_table "artworks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "thumbnail"
    t.string "videoId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "created_by"
    t.string "artist"
  end

  create_table "favourite_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "favourite_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.integer "artwork_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artwork_id"], name: "index_favourites_on_artwork_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "bio"
    t.string "photo"
    t.string "genre"
    t.string "role"
  end

end
