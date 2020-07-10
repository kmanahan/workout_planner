# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_08_232818) do

  create_table "circuit_exercises", force: :cascade do |t|
    t.integer "circuit_id"
    t.integer "exercise_id"
  end

  create_table "circuits", force: :cascade do |t|
    t.string "name"
    t.string "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "program_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "muscles"
    t.string "equipment"
    t.string "description"
    t.integer "sets"
    t.integer "reps"
  end

  create_table "program_exercises", force: :cascade do |t|
    t.integer "program_id"
    t.integer "exercise_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
