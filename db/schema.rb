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

ActiveRecord::Schema.define(version: 20170813050650) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "title"
    t.string "url"
    t.bigint "oo7er_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["oo7er_id"], name: "index_articles_on_oo7er_id"
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "content"
    t.bigint "oo7er_id"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["oo7er_id"], name: "index_comments_on_oo7er_id"
  end

  create_table "groups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oo7ers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.bigint "oo7er_id"
    t.string "name"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_oo7ers_on_group_id"
    t.index ["oo7er_id"], name: "index_oo7ers_on_oo7er_id"
  end

  add_foreign_key "articles", "oo7ers", primary_key: "oo7er_id"
  add_foreign_key "comments", "articles"
  add_foreign_key "comments", "oo7ers", primary_key: "oo7er_id"
  add_foreign_key "oo7ers", "groups"
end
