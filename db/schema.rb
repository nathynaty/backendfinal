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

ActiveRecord::Schema.define(version: 2020_11_30_012626) do

  create_table "costos", force: :cascade do |t|
    t.integer "reparacion_id", null: false
    t.integer "propietario_id", null: false
    t.integer "vehiculo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["propietario_id"], name: "index_costos_on_propietario_id"
    t.index ["reparacion_id"], name: "index_costos_on_reparacion_id"
    t.index ["vehiculo_id"], name: "index_costos_on_vehiculo_id"
  end

  create_table "propietario_vehiculos", force: :cascade do |t|
    t.integer "vehiculo_id", null: false
    t.integer "propietario_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["propietario_id"], name: "index_propietario_vehiculos_on_propietario_id"
    t.index ["vehiculo_id"], name: "index_propietario_vehiculos_on_vehiculo_id"
  end

  create_table "propietarios", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "usuario_id", null: false
    t.string "usuario_actualiza"
    t.string "cedula"
    t.string "celular"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_propietarios_on_usuario_id"
  end

  create_table "reparacions", force: :cascade do |t|
    t.integer "vehiculo_id", null: false
    t.integer "usuario_id", null: false
    t.string "usuario_actualiza"
    t.string "etapa"
    t.boolean "aprobado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_reparacions_on_usuario_id"
    t.index ["vehiculo_id"], name: "index_reparacions_on_vehiculo_id"
  end

  create_table "repuestos", force: :cascade do |t|
    t.string "nombre"
    t.string "cantidad"
    t.integer "reparacion_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reparacion_id"], name: "index_repuestos_on_reparacion_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "nombre"
    t.string "telefono"
    t.string "rol"
    t.string "token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehiculos", force: :cascade do |t|
    t.string "marca"
    t.string "modelo"
    t.integer "usuario_id", null: false
    t.string "usuario_actualiza"
    t.string "color"
    t.string "placa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["usuario_id"], name: "index_vehiculos_on_usuario_id"
  end

  add_foreign_key "costos", "propietarios"
  add_foreign_key "costos", "reparacions"
  add_foreign_key "costos", "vehiculos"
  add_foreign_key "propietario_vehiculos", "propietarios"
  add_foreign_key "propietario_vehiculos", "vehiculos"
  add_foreign_key "propietarios", "usuarios"
  add_foreign_key "reparacions", "usuarios"
  add_foreign_key "reparacions", "vehiculos"
  add_foreign_key "repuestos", "reparacions"
  add_foreign_key "vehiculos", "usuarios"
end
