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

ActiveRecord::Schema.define(version: 20140413093457) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clinic_types", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clinics", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "clinic_type_id"
    t.string   "street"
    t.string   "street_nr"
    t.string   "city"
    t.integer  "country_id"
    t.integer  "latitude"
    t.integer  "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "gci_procedure_score_average"
    t.float    "gci_facilities_score_average"
    t.float    "gci_communication_score_average"
    t.float    "gci_overall_satisfaction_score_average"
    t.float    "gci_recommend_percent"
    t.integer  "gci_count_reviews"
  end

  create_table "countries", force: true do |t|
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gci_reviews_api_color_schemes", force: true do |t|
    t.string   "label"
    t.string   "width"
    t.string   "default_font"
    t.string   "review_font"
    t.string   "heading_font"
    t.string   "details_heading_font"
    t.string   "details_font"
    t.string   "link_font"
    t.string   "background_color"
    t.string   "name_font"
    t.string   "country_font"
    t.string   "final_rating_font"
    t.string   "global_index_font"
    t.string   "certificate_font"
    t.string   "gci_box_color"
    t.string   "gci_box_font"
    t.integer  "user_id"
    t.integer  "gci_reviews_api_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gci_reviews_api_reviews", force: true do |t|
    t.integer  "clinic_id"
    t.integer  "gci_reviews_api_id"
    t.float    "procedure_score"
    t.float    "facilities_score"
    t.float    "communication_score"
    t.float    "overall_satisfaction_score"
    t.text     "positive_text"
    t.text     "negative_text"
    t.text     "normal_text"
    t.string   "name"
    t.string   "city"
    t.string   "country_id"
    t.integer  "gci_reviews_api_statistic_id"
    t.boolean  "approved"
    t.integer  "approved_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gci_reviews_api_statistics", force: true do |t|
    t.integer  "gci_reviews_api_id"
    t.string   "ip"
    t.string   "previous_url"
    t.string   "user_agent"
    t.string   "accept_language"
    t.string   "showed_reviews"
    t.datetime "leaving_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gci_reviews_api_types", force: true do |t|
    t.string   "label"
    t.string   "show_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gci_reviews_apis", force: true do |t|
    t.integer  "clinic_id"
    t.string   "api_code"
    t.string   "web_page"
    t.integer  "gci_reviews_api_type_id"
    t.integer  "gci_reviews_api_color_scheme_id"
    t.integer  "reviews_per_page"
    t.boolean  "must_approve"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "clinic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
