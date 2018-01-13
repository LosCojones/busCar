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

ActiveRecord::Schema.define(version: 20180113142306) do

  create_table "coches", force: :cascade do |t|
    t.string "marca"
    t.string "modelo"
    t.date "fecha_matriculacion"
    t.string "combustible"
    t.integer "kms"
    t.text "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pujas", force: :cascade do |t|
    t.integer "user_id"
    t.integer "subasta_id"
    t.datetime "fecha_puja"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subasta_id"], name: "index_pujas_on_subasta_id"
    t.index ["user_id"], name: "index_pujas_on_user_id"
  end

  create_table "rentals", force: :cascade do |t|
    t.integer "coche_id"
    t.integer "alquilador_id"
    t.integer "alquilado_id"
    t.date "fecha_creacion_anuncio"
    t.date "fecha_fin_anuncio"
    t.date "fecha_inicio_alquiler"
    t.date "fecha_fin_alquiler"
    t.float "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alquilado_id"], name: "index_rentals_on_alquilado_id"
    t.index ["alquilador_id"], name: "index_rentals_on_alquilador_id"
    t.index ["coche_id"], name: "index_rentals_on_coche_id"
  end

  create_table "sells", force: :cascade do |t|
    t.integer "coche_id"
    t.integer "comprador_id"
    t.integer "vendedor_id"
    t.date "fecha_publicacion"
    t.date "fecha_compra"
    t.float "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coche_id"], name: "index_sells_on_coche_id"
    t.index ["comprador_id"], name: "index_sells_on_comprador_id"
    t.index ["vendedor_id"], name: "index_sells_on_vendedor_id"
  end

  create_table "subasta", force: :cascade do |t|
    t.integer "coche_id"
    t.integer "comprador_id"
    t.integer "vendedor_id"
    t.date "fecha_publicacion"
    t.date "fecha_limite"
    t.date "fecha_compra"
    t.float "valor_compra"
    t.integer "puja_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coche_id"], name: "index_subasta_on_coche_id"
    t.index ["comprador_id"], name: "index_subasta_on_comprador_id"
    t.index ["puja_id"], name: "index_subasta_on_puja_id"
    t.index ["vendedor_id"], name: "index_subasta_on_vendedor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "dni"
    t.string "nombre_usuario"
    t.string "password"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
