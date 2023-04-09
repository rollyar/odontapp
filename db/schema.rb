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

ActiveRecord::Schema[7.0].define(version: 2023_04_09_232850) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "odontograms", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.date "exam_date"
    t.string "exam_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_odontograms_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "sex"
    t.string "phone_number"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tooth_statuses", force: :cascade do |t|
    t.boolean "current_treatment"
    t.text "treatment_history"
    t.text "observations"
    t.bigint "tooth_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tooth_id"], name: "index_tooth_statuses_on_tooth_id"
  end

  create_table "tooths", force: :cascade do |t|
    t.integer "position"
    t.integer "tooth_type"
    t.integer "number"
    t.bigint "odontogram_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["odontogram_id"], name: "index_tooths_on_odontogram_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.integer "treatment_type"
    t.date "start_date"
    t.date "end_date"
    t.integer "duration"
    t.bigint "tooth_status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tooth_status_id"], name: "index_treatments_on_tooth_status_id"
  end

  add_foreign_key "odontograms", "patients"
  add_foreign_key "tooth_statuses", "tooths"
  add_foreign_key "tooths", "odontograms"
  add_foreign_key "treatments", "tooth_statuses"
end
