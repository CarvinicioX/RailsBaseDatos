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

ActiveRecord::Schema.define(version: 20170322165718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.date     "date"
    t.float    "subtotal"
    t.float    "tax"
    t.float    "discount"
    t.float    "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "constancies", force: :cascade do |t|
    t.integer  "pacient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pacient_id"], name: "index_constancies_on_pacient_id", using: :btree
  end

  create_table "expedients", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "name"
    t.string   "surname"
    t.date     "birth_date"
    t.string   "genre"
    t.string   "civil_status"
    t.string   "birth_place"
    t.string   "occupation"
    t.string   "blood_type"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["patient_id"], name: "index_expedients_on_patient_id", using: :btree
  end

  create_table "laboratories", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medic_patients", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "medic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medic_id"], name: "index_medic_patients_on_medic_id", using: :btree
    t.index ["patient_id"], name: "index_medic_patients_on_patient_id", using: :btree
  end

  create_table "medics", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birth_date"
    t.string   "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "constancy_id"
    t.integer  "bill_id"
    t.string   "order_type"
    t.string   "observation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["bill_id"], name: "index_orders_on_bill_id", using: :btree
    t.index ["constancy_id"], name: "index_orders_on_constancy_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["patient_id"], name: "index_phone_numbers_on_patient_id", using: :btree
  end

  create_table "remissions", force: :cascade do |t|
    t.integer  "constancy_id"
    t.integer  "laboratory_id"
    t.date     "date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["constancy_id"], name: "index_remissions_on_constancy_id", using: :btree
    t.index ["laboratory_id"], name: "index_remissions_on_laboratory_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.integer  "constancy_id"
    t.date     "date"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["constancy_id"], name: "index_results_on_constancy_id", using: :btree
  end

  add_foreign_key "medic_patients", "medics"
  add_foreign_key "medic_patients", "patients"
  add_foreign_key "phone_numbers", "patients"
end
