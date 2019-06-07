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

ActiveRecord::Schema.define(version: 2019_06_12_032431) do

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "content"
    t.bigint "users_id"
    t.bigint "products_id"
    t.bigint "person_post_news_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_post_news_id"], name: "index_comments_on_person_post_news_id"
    t.index ["products_id"], name: "index_comments_on_products_id"
    t.index ["users_id"], name: "index_comments_on_users_id"
  end

  create_table "contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "users_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_contacts_on_users_id"
  end

  create_table "histories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_histories_on_users_id"
  end

  create_table "image_products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.bigint "products_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["products_id"], name: "index_image_products_on_products_id"
  end

  create_table "order_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "quanitily"
    t.float "price"
    t.bigint "orders_id"
    t.bigint "products_id"
    t.bigint "histories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["histories_id"], name: "index_order_details_on_histories_id"
    t.index ["orders_id"], name: "index_order_details_on_orders_id"
    t.index ["products_id"], name: "index_order_details_on_products_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "date_order"
    t.string "address"
    t.string "note"
    t.integer "status", default: 0, null: false
    t.bigint "users_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_orders_on_users_id"
  end

  create_table "person_post_news", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "image"
    t.text "description"
    t.bigint "users_id"
    t.datetime "updated_at", null: false
    t.index ["users_id"], name: "index_person_post_news_on_users_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "description_sort"
    t.text "description_long"
    t.string "image"
    t.string "color"
    t.string "size"
    t.float "price_in"
    t.float "price_out"
    t.float "price_sale"
    t.integer "status", default: 0, null: false
    t.bigint "small_categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["small_categories_id"], name: "index_products_on_small_categories_id"
  end

  create_table "ranks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "star_level"
    t.bigint "users_id"
    t.bigint "products_id"
    t.bigint "person_post_news_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_post_news_id"], name: "index_ranks_on_person_post_news_id"
    t.index ["products_id"], name: "index_ranks_on_products_id"
    t.index ["users_id"], name: "index_ranks_on_users_id"
  end

  create_table "slides", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "small_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "small_category_name"
    t.text "description"
    t.bigint "categories_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categories_id"], name: "index_small_categories_on_categories_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "address"
    t.string "password_digest"
    t.string "remember_digest"
    t.integer "role", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "comments", "person_post_news"
  add_foreign_key "comments", "products", column: "products_id"
  add_foreign_key "comments", "users", column: "users_id"
  add_foreign_key "contacts", "users", column: "users_id"
  add_foreign_key "histories", "users", column: "users_id"
  add_foreign_key "image_products", "products", column: "products_id"
  add_foreign_key "order_details", "histories", column: "histories_id"
  add_foreign_key "order_details", "orders", column: "orders_id"
  add_foreign_key "order_details", "products", column: "products_id"
  add_foreign_key "orders", "users", column: "users_id"
  add_foreign_key "person_post_news", "users", column: "users_id"
  add_foreign_key "products", "small_categories", column: "small_categories_id"
  add_foreign_key "ranks", "person_post_news"
  add_foreign_key "ranks", "products", column: "products_id"
  add_foreign_key "ranks", "users", column: "users_id"
  add_foreign_key "small_categories", "categories", column: "categories_id"
end
