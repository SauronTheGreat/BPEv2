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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120513122753) do

  create_table "addresses", :force => true do |t|
    t.string   "road"
    t.integer  "pincode"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "approach_qualities", :force => true do |t|
    t.integer  "building_id"
    t.integer  "quality_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "areas", :force => true do |t|
    t.integer  "city_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "balconies", :force => true do |t|
    t.integer  "flat_id"
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bathrooms", :force => true do |t|
    t.integer  "flat_id"
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bhk_configs", :force => true do |t|
    t.integer  "bhk_id"
    t.integer  "flat_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bhks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "brokerages", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "rent_year"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "building_qualities", :force => true do |t|
    t.integer  "building_id"
    t.integer  "quality_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "building_routes", :force => true do |t|
    t.integer  "building_id"
    t.text     "comment"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "building_service_helplines", :force => true do |t|
    t.integer  "building_service_id"
    t.string   "phone"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "building_service_notes", :force => true do |t|
    t.integer  "building_service_id"
    t.text     "comment"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "building_services", :force => true do |t|
    t.integer  "building_id"
    t.integer  "service_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "buildings_facilities", :id => false, :force => true do |t|
    t.integer "building_id"
    t.integer "facility_id"
  end

  create_table "buildings_facility_features", :id => false, :force => true do |t|
    t.integer "building_id"
    t.integer "facility_feature_id"
  end

  create_table "buildings_moving_requirements", :id => false, :force => true do |t|
    t.integer "building_id"
    t.integer "moving_requirement_id"
  end

  create_table "buildings_restrictions", :id => false, :force => true do |t|
    t.integer "building_id"
    t.integer "restriction_id"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "connections", :force => true do |t|
    t.integer  "entity_id"
    t.integer  "friend_id"
    t.integer  "contype_id"
    t.string   "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contypes", :force => true do |t|
    t.string   "name"
    t.boolean  "entity_is_contact"
    t.boolean  "friend_is_contact"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "deals", :force => true do |t|
    t.integer  "flat_id"
    t.date     "deal_date"
    t.integer  "brokerage"
    t.integer  "rent"
    t.integer  "deposit"
    t.integer  "contact_id"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "directions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "emails", :force => true do |t|
    t.integer  "contact_id"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entities", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "expected_rents", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "rent_year"
    t.integer  "value"
    t.integer  "minimum_value"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "facilities", :force => true do |t|
    t.string   "name"
    t.boolean  "is_building"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "facilities_flats", :id => false, :force => true do |t|
    t.integer "flat_id"
    t.integer "facility_id"
  end

  create_table "facility_features", :force => true do |t|
    t.integer  "facility_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "facility_features_flats", :id => false, :force => true do |t|
    t.integer "flat_id"
    t.integer "facility_feature_id"
  end

  create_table "flat_ciphers", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "rent_year"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "flat_key_data", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "rent"
    t.integer  "furnstat_id"
    t.date     "available_from"
    t.string   "num"
    t.string   "url"
    t.integer  "source_id"
    t.integer  "floor_area"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "flat_restrictions", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "restriction_id"
    t.text     "comment"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "furnstats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "interiors_qualities", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "quality_id"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "landmarks", :force => true do |t|
    t.integer  "building_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "localities", :force => true do |t|
    t.integer  "area_id"
    t.integer  "quality_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locality_notes", :force => true do |t|
    t.integer  "locality_id"
    t.text     "comment"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "building_id"
    t.integer  "locality_id"
    t.boolean  "primary"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "moving_charges", :force => true do |t|
    t.integer  "building_id"
    t.integer  "value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "moving_requirements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notes", :force => true do |t|
    t.integer  "entity_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "parkings", :force => true do |t|
    t.integer  "flat_id"
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "phones", :force => true do |t|
    t.integer  "contact_id"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "poi_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pois", :force => true do |t|
    t.integer  "locality_id"
    t.integer  "poi_type_id"
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "qualities", :force => true do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "rental_terms", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "rent_year"
    t.text     "comment"
    t.boolean  "deposit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "restrictions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "showings", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "task_id"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sources", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "admin"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "view_qualities", :force => true do |t|
    t.integer  "flat_id"
    t.integer  "quality_id"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
