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

ActiveRecord::Schema.define(version: 20140603201122) do

  create_table "budgets", force: true do |t|
    t.integer "Length"
    t.integer "Estimated_budget"
    t.integer "Flight"
    t.integer "Meal"
    t.integer "Lodging"
    t.integer "Activities"
    t.integer "Transportation"
    t.integer "Other"
    t.integer "Trip_id",          limit: 255
  end

  create_table "contacts", force: true do |t|
    t.string  "Type"
    t.string  "Location"
    t.string  "Company_name"
    t.string  "Contact"
    t.string  "Address"
    t.string  "Phone_number"
    t.string  "Website"
    t.integer "Trip_id"
    t.string  "Name"
  end

  create_table "countries", force: true do |t|
    t.string  "Name"
    t.string  "Picture_url"
    t.integer "Region_id"
    t.integer "Page_count"
  end

  create_table "itineraries", force: true do |t|
    t.integer "Day"
    t.string  "City"
    t.text    "Activity"
    t.string  "Hotel"
    t.string  "Transportation"
    t.string  "Itinerary_url"
    t.integer "Trip_id"
    t.string  "Name"
  end

  create_table "priorities", force: true do |t|
    t.integer "Culture"
    t.integer "Nightlife"
    t.integer "Physical_exertion"
    t.integer "Accomodation"
    t.integer "Free_time"
    t.integer "Trip_id"
  end

  create_table "regions", force: true do |t|
    t.string  "Name"
    t.string  "Picture_url"
    t.integer "Page_count"
  end

  create_table "trips", force: true do |t|
    t.string  "Name"
    t.string  "Picture_url"
    t.text    "Description",   limit: 255
    t.string  "Itinerary_url"
    t.string  "Budget_url"
    t.string  "Priority_url"
    t.integer "Country_id"
    t.integer "Page_count"
  end

  create_table "users", force: true do |t|
    t.string "username"
    t.string "password"
    t.string "name"
  end

end
