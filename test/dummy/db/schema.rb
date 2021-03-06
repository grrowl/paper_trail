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

ActiveRecord::Schema.define(:version => 20110208155314) do

  create_table "animals", :force => true do |t|
    t.string "name"
    t.string "species"
  end

  create_table "articles", :force => true do |t|
    t.string "title"
    t.string "content"
    t.string "abstract"
  end

  create_table "authorships", :force => true do |t|
    t.integer "book_id"
    t.integer "person_id"
  end

  create_table "books", :force => true do |t|
    t.string "title"
  end

  create_table "documents", :force => true do |t|
    t.string "name"
  end

  create_table "fluxors", :force => true do |t|
    t.integer "widget_id"
    t.string  "name"
  end

  create_table "gadgets", :force => true do |t|
    t.integer  "glimmer_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "child_updated_at"
  end

  create_table "glimmers", :force => true do |t|
    t.integer  "widget_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "child_updated_at"
  end

  create_table "legacy_widgets", :force => true do |t|
    t.string  "name"
    t.integer "version"
  end

  create_table "people", :force => true do |t|
    t.string "name"
  end

  create_table "post_versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.string   "ip"
    t.string   "user_agent"
  end

  add_index "post_versions", ["item_type", "item_id"], :name => "index_post_versions_on_item_type_and_item_id"

  create_table "posts", :force => true do |t|
    t.string "title"
    t.string "content"
  end

  create_table "songs", :force => true do |t|
    t.integer "length"
  end

  create_table "version_associations", :force => true do |t|
    t.integer "version_id"
    t.string  "foreign_key_name", :null => false
    t.integer "foreign_key_id"
  end

  add_index "version_associations", ["foreign_key_name", "foreign_key_id"], :name => "index_on_foreign_key_name_and foreign_key_id"
  add_index "version_associations", ["version_id"], :name => "index_version_associations_on_version_id"

  create_table "versions", :force => true do |t|
    t.string   "item_type",      :null => false
    t.integer  "item_id",        :null => false
    t.string   "event",          :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.integer  "transaction_id"
    t.text     "object_changes"
    t.datetime "created_at"
    t.integer  "answer"
    t.string   "action"
    t.string   "question"
    t.integer  "article_id"
    t.string   "ip"
    t.string   "user_agent"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

  create_table "widgets", :force => true do |t|
    t.string   "name"
    t.text     "a_text"
    t.integer  "an_integer"
    t.float    "a_float"
    t.decimal  "a_decimal"
    t.datetime "a_datetime"
    t.time     "a_time"
    t.date     "a_date"
    t.boolean  "a_boolean"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sacrificial_column"
    t.string   "type"
  end

  create_table "wotsits", :force => true do |t|
    t.integer  "widget_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
