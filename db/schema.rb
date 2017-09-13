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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170912191336) do

  create_table "events", force: :cascade do |t|
    t.string "nombre"
    t.string "ciudad"
    t.date "fecha_preventa"
    t.date "fecha_evento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "localities_id"
    t.index ["localities_id"], name: "index_events_on_localities_id"
  end

  create_table "localities", force: :cascade do |t|
=======
ActiveRecord::Schema.define(version: 20170911140216) do

  create_table "boleta", force: :cascade do |t|
    t.string "nombre"
    t.string "ciudad"
    t.string "pais"
    t.date "fecha_inicio"
    t.date "fecha_evento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "localidades", force: :cascade do |t|
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
    t.string "tipo"
    t.float "precio"
    t.date "fecha_limite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
<<<<<<< HEAD
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_tickets_on_event_id"
=======
    t.string "nombre"
    t.string "ciudad"
    t.string "pais"
    t.date "fecha_inicio"
    t.date "fecha_evento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
>>>>>>> e726aa3161ce6e066dfcacd5328d2a5029866644
  end

end
