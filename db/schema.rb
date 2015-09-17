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

ActiveRecord::Schema.define(version: 20150917213054) do

  create_table "business_listings", force: :cascade do |t|
    t.text     "skills_wanted",       limit: 65535
    t.string   "title",               limit: 255
    t.boolean  "part_time",           limit: 1
    t.boolean  "full_time",           limit: 1
    t.boolean  "contract",            limit: 1
    t.text     "job_description",     limit: 65535
    t.string   "contact_email",       limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "business_profile_id", limit: 4
  end

  create_table "business_profiles", force: :cascade do |t|
    t.integer  "business_id",          limit: 4
    t.integer  "user_id",              limit: 4
    t.string   "business_name",        limit: 255
    t.string   "url_of_business",      limit: 255
    t.text     "description_business", limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "resumes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_profiles", force: :cascade do |t|
    t.integer  "student_id",              limit: 4
    t.integer  "user_id",                 limit: 4
    t.string   "first_name",              limit: 255
    t.string   "last_name",               limit: 255
    t.string   "github_url",              limit: 255
    t.string   "profile_img",             limit: 255
    t.text     "short_description",       limit: 65535
    t.text     "long_decription",         limit: 65535
    t.text     "skills",                  limit: 65535
    t.boolean  "part_time",               limit: 1
    t.boolean  "full_time",               limit: 1
    t.boolean  "contract",                limit: 1
    t.boolean  "public",                  limit: 1
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "three_descriptive_words", limit: 255
    t.string   "website",                 limit: 255
    t.boolean  "sponsor",                 limit: 1
    t.string   "year",                    limit: 255
    t.string   "ruby",                    limit: 255
    t.string   "rails",                   limit: 255
    t.string   "sql",                     limit: 255
    t.string   "html",                    limit: 255
    t.string   "css",                     limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255
    t.string   "encrypted_password",     limit: 255, default: ""
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "user_id",                limit: 4
    t.string   "password",               limit: 255
    t.string   "type_of_user",           limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "invitation_token",       limit: 255
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit",       limit: 4
    t.integer  "invited_by_id",          limit: 4
    t.string   "invited_by_type",        limit: 255
    t.integer  "invitations_count",      limit: 4,   default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
