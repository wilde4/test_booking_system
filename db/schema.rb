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

ActiveRecord::Schema.define(:version => 20120420115931) do

  create_table "allocations", :force => true do |t|
    t.integer "property_id"
    t.integer "room_id"
    t.date    "date"
    t.decimal "price",        :precision => 12, :scale => 2
    t.integer "minimum_stay",                                :default => 1
    t.integer "quantity",                                    :default => 1
  end

  add_index "allocations", ["date"], :name => "index_allocations_on_date"
  add_index "allocations", ["property_id"], :name => "index_allocations_on_property_id"
  add_index "allocations", ["room_id"], :name => "index_allocations_on_room_id"

  create_table "facilities", :force => true do |t|
    t.string "name"
    t.string "description"
    t.string "cached_slug"
  end

  create_table "facility_rooms", :force => true do |t|
    t.integer "facility_id"
    t.integer "room_id"
  end

  create_table "properties", :force => true do |t|
    t.string "name"
    t.string "lat"
    t.string "lng"
    t.string "cached_slug"
    t.text   "description"
    t.text   "location_details"
    t.text   "travel_details"
    t.text   "cancellation_policy"
    t.text   "booking_policy"
    t.text   "terms_and_conditions_policy"
  end

  create_table "rooms", :force => true do |t|
    t.integer "property_id"
    t.string  "name"
    t.decimal "default_price", :precision => 12, :scale => 2
    t.text    "description"
    t.string  "quantity"
    t.string  "cached_slug"
  end

  create_table "slugs", :force => true do |t|
    t.string   "scope"
    t.string   "slug"
    t.integer  "record_id"
    t.datetime "created_at"
  end

  add_index "slugs", ["scope", "record_id", "created_at"], :name => "index_slugs_on_scope_and_record_id_and_created_at"
  add_index "slugs", ["scope", "record_id"], :name => "index_slugs_on_scope_and_record_id"
  add_index "slugs", ["scope", "slug", "created_at"], :name => "index_slugs_on_scope_and_slug_and_created_at"
  add_index "slugs", ["scope", "slug"], :name => "index_slugs_on_scope_and_slug"

end
