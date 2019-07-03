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

ActiveRecord::Schema.define(version: 2019_06_30_161019) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "avatars", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.integer "lives"
    t.integer "attacks"
    t.integer "victories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "battles", force: :cascade do |t|
    t.string "winner"
    t.bigint "player_one_id"
    t.bigint "player_two_id"
    t.bigint "weapon_one_id"
    t.bigint "weapon_two_id"
    t.bigint "shield_one_id"
    t.bigint "shield_two_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_one_id"], name: "index_battles_on_player_one_id"
    t.index ["player_two_id"], name: "index_battles_on_player_two_id"
    t.index ["shield_one_id"], name: "index_battles_on_shield_one_id"
    t.index ["shield_two_id"], name: "index_battles_on_shield_two_id"
    t.index ["weapon_one_id"], name: "index_battles_on_weapon_one_id"
    t.index ["weapon_two_id"], name: "index_battles_on_weapon_two_id"
  end

  create_table "shields", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
