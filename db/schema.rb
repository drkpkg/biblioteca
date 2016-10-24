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

ActiveRecord::Schema.define(version: 20161022174623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_tags", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_tags_on_book_id", using: :btree
    t.index ["tag_id"], name: "index_book_tags_on_tag_id", using: :btree
  end

  create_table "book_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "isbn"
    t.string   "cover_uid"
    t.string   "cover_name"
    t.integer  "copies"
    t.integer  "book_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["book_type_id"], name: "index_books_on_book_type_id", using: :btree
  end

  create_table "loan_histories", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_loan_histories_on_book_id", using: :btree
    t.index ["user_id"], name: "index_loan_histories_on_user_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.date     "birthdate"
    t.string   "code"
    t.integer  "user_type_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "password"
    t.index ["user_type_id"], name: "index_users_on_user_type_id", using: :btree
  end

end
