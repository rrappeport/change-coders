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

ActiveRecord::Schema.define(version: 2018_08_09_050258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "logo"
    t.string "website"
    t.text "description"
    t.string "address"
    t.string "category"
    t.index ["email"], name: "index_charities_on_email", unique: true
    t.index ["reset_password_token"], name: "index_charities_on_reset_password_token", unique: true
  end

  create_table "developers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.text "experience"
    t.string "github_username"
    t.string "address"
    t.string "linkedin_username"
    t.string "avatar"
    t.date "birth_date"
    t.index ["email"], name: "index_developers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_developers_on_reset_password_token", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "work_type"
    t.string "status"
    t.date "deadline"
    t.string "github"
    t.bigint "charity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["charity_id"], name: "index_projects_on_charity_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.bigint "developer_id"
    t.bigint "project_id"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_proposals_on_developer_id"
    t.index ["project_id"], name: "index_proposals_on_project_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "developer_id"
    t.bigint "project_id"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_teams_on_developer_id"
    t.index ["project_id"], name: "index_teams_on_project_id"
  end

  add_foreign_key "projects", "charities"
  add_foreign_key "proposals", "developers"
  add_foreign_key "proposals", "projects"
  add_foreign_key "teams", "developers"
  add_foreign_key "teams", "projects"
end
