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

ActiveRecord::Schema.define(version: 2019_02_12_191340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "collectionreps", force: :cascade do |t|
    t.integer "representative_id"
    t.integer "collection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representatives", force: :cascade do |t|
    t.string "pp_id"
    t.string "title"
    t.string "short_title"
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "suffix"
    t.string "date_of_birth"
    t.string "gender"
    t.string "party"
    t.string "leadership_role"
    t.string "twitter_account"
    t.string "facebook_account"
    t.string "youtube_account"
    t.string "url"
    t.boolean "in_office"
    t.string "seniority"
    t.string "next_election"
    t.string "total_votes"
    t.string "missed_votes"
    t.string "total_present"
    t.string "office"
    t.string "phone"
    t.string "fax"
    t.string "state"
    t.string "district"
    t.string "state_rank"
    t.float "missed_votes_pct"
    t.float "votes_with_party_pct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
