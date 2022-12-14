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

ActiveRecord::Schema[7.0].define(version: 2022_09_21_143702) do
  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "categoria"
    t.datetime "data_cad"
    t.datetime "data_alte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservas", force: :cascade do |t|
    t.datetime "data_reserva"
    t.datetime "data_devolucao"
    t.string "status_reserva"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "usuario_id", null: false
    t.integer "livro_id", null: false
    t.index ["livro_id"], name: "index_reservas_on_livro_id"
    t.index ["usuario_id"], name: "index_reservas_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "senha"
    t.string "permissao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservas", "livros"
  add_foreign_key "reservas", "usuarios"
end
