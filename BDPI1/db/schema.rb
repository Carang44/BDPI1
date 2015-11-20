# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151119211411) do

  create_table "apointments", force: :cascade do |t|
    t.string   "nombreCita"
    t.string   "lugarCita"
    t.text     "fechaCita"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "patient_id"
  end

  add_index "apointments", ["fechaCita"], name: "index_apointments_on_fechaCita"
  add_index "apointments", ["patient_id"], name: "index_apointments_on_patient_id"

  create_table "medicines", force: :cascade do |t|
    t.string   "nombreMedicamento"
    t.string   "dosisMedicamento"
    t.text     "fechaInicioMedicamento"
    t.string   "intervaloMedicamento"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "treatment_id"
  end

  add_index "medicines", ["nombreMedicamento"], name: "index_medicines_on_nombreMedicamento"
  add_index "medicines", ["treatment_id"], name: "index_medicines_on_treatment_id"

  create_table "patients", force: :cascade do |t|
    t.string   "nombrePaciente"
    t.string   "cedula"
    t.string   "correo"
    t.string   "contrasena"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "patients", ["nombrePaciente"], name: "index_patients_on_nombrePaciente"

  create_table "treatments", force: :cascade do |t|
    t.string   "nombreTratamiento"
    t.text     "descripcionTratamiento"
    t.text     "fechaInicio"
    t.text     "fechaFin"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "patient_id"
  end

  add_index "treatments", ["patient_id"], name: "index_treatments_on_patient_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nombreUsuario"
    t.string   "cedulaUsuario"
    t.string   "permissionLevel"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "views", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "views", ["email"], name: "index_views_on_email", unique: true
  add_index "views", ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true

end
