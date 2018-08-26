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

ActiveRecord::Schema.define(version: 2018_08_26_150031) do

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.integer "league_id"
    t.integer "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "position_id"
    t.integer "salary"
    t.integer "points", default: 0
    t.string "pro_team"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "available_salary", default: 16
    t.integer "user_id"
    t.integer "points_total"
    t.integer "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams_players", force: :cascade do |t|
    t.integer "team_id"
    t.integer "player_id"
  end

  create_table "user_leagues", force: :cascade do |t|
    t.integer "user_id"
    t.integer "league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.boolean "stat_admin", default: false
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
