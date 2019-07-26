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


ActiveRecord::Schema.define(version: 2019_07_26_192306) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedigrees", force: :cascade do |t|
    t.boolean "raw", default: true, null: false
    t.string "cohort"
    t.string "shl_case_number"
    t.date "spawning_date"
    t.string "mother"
    t.string "father"
    t.string "seperate_cross_within_cohort"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "population_estimates", force: :cascade do |t|
    t.boolean "raw", default: true, null: false
    t.date "sample_date"
    t.string "shl_case_number"
    t.date "spawning_date"
    t.string "lifestage"
    t.string "abundance"
    t.string "facility"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spawning_successes", force: :cascade do |t|
    t.boolean "raw", default: true, null: false
    t.string "tag"
    t.string "shl_case_number"
    t.date "spawning_date"
    t.date "date_attempted"
    t.string "spawning_success"
    t.decimal "nbr_of_eggs_spawned"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end