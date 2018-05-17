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

ActiveRecord::Schema.define(version: 2018_05_17_132302) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "build", force: :cascade do |t|
    t.integer "build_number"
    t.bigint "pipeline_id"
    t.index ["pipeline_id"], name: "index_build_on_pipeline_id"
  end

  create_table "concourses", force: :cascade do |t|
    t.string "name"
    t.string "host"
  end

  create_table "pipeline", force: :cascade do |t|
    t.string "name"
    t.string "status"
    t.bigint "team_id"
    t.index ["team_id"], name: "index_pipeline_on_team_id"
  end

  create_table "team", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.bigint "concourse_id"
    t.index ["concourse_id"], name: "index_team_on_concourse_id"
  end

end
