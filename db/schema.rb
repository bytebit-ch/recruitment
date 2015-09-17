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

ActiveRecord::Schema.define(version: 20150917150419) do

  create_table "business_listings", force: :cascade do |t|
    t.text     "skills_wanted"
    t.string     "title"
    t.boolean  "part_time"
    t.boolean  "full_time"
    t.boolean  "contract"
    t.text     "job_description"
    t.string     "contact_email"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "business_profile_id"
  end

  create_table "business_profiles", force: :cascade do |t|
    t.integer  "business_id"
    t.integer  "user_id"
    t.string     "business_name"
    t.string     "url_of_business"
    t.text     "description_business"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_profiles", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "user_id"
    t.string     "first_name"
    t.string     "last_name"
    t.string     "github_url"
    t.string     "profile_img"
    t.text     "short_description"
    t.text     "long_decription"
    t.text     "skills"
    t.boolean  "part_time"
    t.boolean  "full_time"
    t.boolean  "contract"
    t.boolean  "public"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string     "three_descriptive_words"
    t.string     "website"
    t.boolean  "sponsor"
    t.string     "year"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "user_id"
    t.string     "password"
    t.string     "type_of_user"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count"
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
