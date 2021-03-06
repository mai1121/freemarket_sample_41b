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

ActiveRecord::Schema.define(version: 20190107115738) do

  create_table "brands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_brands_on_name", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "ancestry"
    t.index ["ancestry"], name: "index_categories_on_ancestry", using: :btree
  end

  create_table "item_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "item_id",    null: false
    t.string   "image",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_images_on_item_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name",                              null: false
    t.text    "description",         limit: 65535
    t.integer "size"
    t.integer "status"
    t.integer "delivery_fee_method"
    t.integer "delivery_method"
    t.integer "ships_from"
    t.integer "days_to_ship"
    t.integer "price",                             null: false
    t.integer "category_id"
    t.integer "brand_id"
    t.index ["brand_id"], name: "index_items_on_brand_id", using: :btree
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                      default: "", null: false
    t.string   "encrypted_password",                         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.string   "first_name",                                              null: false
    t.string   "last_name",                                               null: false
    t.string   "first_name_kana",                                         null: false
    t.string   "last_name_kana",                                          null: false
    t.string   "nickname",                                                null: false
    t.string   "phone_number",                                            null: false
    t.string   "credit_card_num",                                         null: false
    t.string   "credit_card_expiration_month",                            null: false
    t.string   "credit_card_expiration_year",                             null: false
    t.string   "credit_card_security_num",                                null: false
    t.text     "profile",                      limit: 65535
    t.string   "icon_image"
    t.string   "postal_code"
    t.string   "prefecture",                                              null: false
    t.string   "city",                                                    null: false
    t.string   "address",                                                 null: false
    t.string   "building_name"
    t.integer  "birth_year",                                              null: false
    t.integer  "birth_month",                                             null: false
    t.integer  "birth_day",                                               null: false
    t.string   "uid"
    t.string   "provider"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "item_images", "items"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "categories"
end
