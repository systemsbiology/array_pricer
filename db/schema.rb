# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091027190630) do

  create_table "applications", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hybridization_options", :force => true do |t|
    t.string   "name"
    t.float    "internal_price"
    t.float    "nonprofit_price"
    t.float    "commercial_price"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hybridization_options_microarrays", :id => false, :force => true do |t|
    t.integer "hybridization_option_id"
    t.integer "microarray_id"
  end

  create_table "labeling_options", :force => true do |t|
    t.string   "name"
    t.float    "internal_price"
    t.float    "nonprofit_price"
    t.float    "commercial_price"
    t.string   "description"
    t.string   "starting_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ordering_information"
  end

  create_table "labeling_options_microarrays", :id => false, :force => true do |t|
    t.integer "labeling_option_id"
    t.integer "microarray_id"
  end

  create_table "microarrays", :force => true do |t|
    t.string   "name"
    t.float    "facility_internal_price"
    t.float    "facility_nonprofit_price"
    t.float    "facility_commercial_price"
    t.integer  "number_per_slide"
    t.integer  "organism_id"
    t.integer  "application_id"
    t.integer  "platform_id"
    t.string   "catalog_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "user_internal_price"
    t.float    "user_nonprofit_price"
    t.float    "user_commercial_price"
  end

  create_table "organisms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "platforms", :force => true do |t|
    t.string   "name"
    t.string   "vendor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
