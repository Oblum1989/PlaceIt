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

ActiveRecord::Schema.define(version: 2019_08_13_152453) do

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "url"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies_reservations", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "reservation_id"
    t.index ["movie_id"], name: "index_movies_reservations_on_movie_id"
    t.index ["reservation_id"], name: "index_movies_reservations_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "cedula"
    t.string "name"
    t.string "email"
    t.integer "cellphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
