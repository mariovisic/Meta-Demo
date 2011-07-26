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

ActiveRecord::Schema.define(:version => 20110720133244) do

  create_table "manufacturers", :force => true do |t|
    t.string   "name"
    t.integer  "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "manufacturers", ["id"], :name => "index_manufacturers_on_id"

  create_table "parts", :force => true do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "popularity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "parts", ["id"], :name => "index_parts_on_id"

  create_table "robot_parts", :force => true do |t|
    t.integer "robot_id"
    t.integer "part_id"
  end

  add_index "robot_parts", ["part_id"], :name => "index_robot_parts_on_part_id"
  add_index "robot_parts", ["robot_id"], :name => "index_robot_parts_on_robot_id"

  create_table "robots", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "robots", ["id"], :name => "index_robots_on_id"

  create_table "supplier_manufacturers", :force => true do |t|
    t.integer "manufacturer_id"
    t.integer "supplier_id"
  end

  add_index "supplier_manufacturers", ["manufacturer_id"], :name => "index_supplier_manufacturers_on_manufacturer_id"
  add_index "supplier_manufacturers", ["supplier_id"], :name => "index_supplier_manufacturers_on_supplier_id"

  create_table "supplier_parts", :force => true do |t|
    t.integer "supplier_id"
    t.integer "part_id"
  end

  add_index "supplier_parts", ["part_id"], :name => "index_supplier_parts_on_part_id"
  add_index "supplier_parts", ["supplier_id"], :name => "index_supplier_parts_on_supplier_id"

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "suppliers", ["id"], :name => "index_suppliers_on_id"

end
