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

ActiveRecord::Schema.define(version: 20140524061125) do

  create_table "contacts", force: true do |t|
    t.string  "Type"
    t.string  "Location"
    t.string  "Company_name"
    t.string  "Contact"
    t.string  "Address"
    t.string  "Phone_number"
    t.string  "Website"
    t.integer "Trip_id"
  end

  create_table "countries", force: true do |t|
    t.string  "Name"
    t.string  "Picture_url"
    t.integer "Region_id"
  end

  create_table "itineraries", force: true do |t|
    t.integer "Day"
    t.string  "City"
    t.text    "Activity"
    t.string  "Hotel"
    t.string  "Transportation"
    t.string  "Itinerary_url"
    t.integer "Trip_id"
  end

  create_table "regions", force: true do |t|
    t.string "Name"
    t.string "Picture_url"
  end

  create_table "trips", force: true do |t|
    t.string  "Name"
    t.string  "Picture_url"
    t.string  "Description"
    t.string  "Itinerary_url"
    t.string  "Budget_url"
    t.string  "Priority_url"
    t.integer "Country_id"
  end

end
