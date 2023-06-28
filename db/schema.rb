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

ActiveRecord::Schema[7.0].define(version: 2023_06_28_151149) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.datetime "start"
    t.datetime "finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "client_id", null: false
    t.bigint "payment_id", null: false
    t.index ["client_id"], name: "index_appointments_on_client_id"
    t.index ["payment_id"], name: "index_appointments_on_payment_id"
  end

  create_table "appointments_employees", id: false, force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "appointment_id", null: false
  end

  create_table "appointments_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id", null: false
    t.bigint "appointment_id", null: false
    t.index ["appointment_id"], name: "index_appointments_services_on_appointment_id"
    t.index ["service_id"], name: "index_appointments_services_on_service_id"
  end

  create_table "clients", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "specialty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "level_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["level_id"], name: "index_employees_on_level_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "employees_roles", id: false, force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "role_id", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels_services", id: false, force: :cascade do |t|
    t.bigint "service_id", null: false
    t.bigint "level_id", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.bigint "department_id", null: false
    t.string "name"
    t.integer "timing"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.bigint "employee_id", null: false
    t.index ["department_id"], name: "index_services_on_department_id"
    t.index ["employee_id"], name: "index_services_on_employee_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "surname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointments", "clients"
  add_foreign_key "appointments", "payments"
  add_foreign_key "appointments_services", "appointments"
  add_foreign_key "appointments_services", "services"
  add_foreign_key "clients", "users"
  add_foreign_key "employees", "levels"
  add_foreign_key "employees", "users"
  add_foreign_key "services", "departments"
  add_foreign_key "services", "employees"
end
