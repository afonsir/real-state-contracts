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

ActiveRecord::Schema[7.2].define(version: 2025_12_13_003242) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "uf", limit: 2, null: false
    t.string "municipality", null: false
    t.string "street", null: false
    t.string "number", null: false
    t.string "complement"
    t.string "neighborhood", null: false
    t.string "zipcode", limit: 8, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buyers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "document_number", limit: 14, null: false
    t.string "kind", limit: 4, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "installments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number", null: false
    t.date "due_date", null: false
    t.integer "amount_in_cents", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sellers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.string "document_number", limit: 14, null: false
    t.string "kind", limit: 4, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "pre_index", limit: 10, null: false
    t.integer "total_pre_interest_in_cents", null: false
    t.string "pos_index", limit: 10, null: false
    t.integer "total_pos_interest_in_cents", null: false
    t.integer "mora_interest_in_cents", null: false
    t.integer "compensatory_fee_in_cents", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
