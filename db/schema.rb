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

ActiveRecord::Schema.define(version: 20171022015155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "directories", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "style_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id", "style_id"], name: "index_directories_on_skill_id_and_style_id", unique: true
    t.index ["skill_id"], name: "index_directories_on_skill_id"
    t.index ["style_id"], name: "index_directories_on_style_id"
  end

  create_table "examples", force: :cascade do |t|
    t.string "title", null: false
    t.string "url", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.bigint "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_profiles_on_course_id"
  end

  create_table "prostyles", force: :cascade do |t|
    t.bigint "style_id"
    t.bigint "profile_id"
    t.index ["profile_id"], name: "index_prostyles_on_profile_id"
    t.index ["style_id", "profile_id"], name: "index_prostyles_on_style_id_and_profile_id", unique: true
    t.index ["style_id"], name: "index_prostyles_on_style_id"
  end

  create_table "resources", force: :cascade do |t|
    t.bigint "skill_id", null: false
    t.bigint "example_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["example_id"], name: "index_resources_on_example_id"
    t.index ["skill_id"], name: "index_resources_on_skill_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "styles", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
