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

ActiveRecord::Schema.define(version: 2020_06_17_131922) do

  create_table "countries", force: :cascade do |t|
    t.text "name"
    t.text "capital"
    t.text "official_language"
    t.text "area_in_sqkm"
    t.text "population"
    t.text "flag"
  end

  create_table "places", force: :cascade do |t|
    t.text "name"
    t.text "region"
    t.text "feature"
    t.text "period"
    t.text "altitude_in_m"
    t.text "image"
    t.integer "country_id"
  end

end
