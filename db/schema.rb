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

ActiveRecord::Schema.define(version: 20170130095047) do

  create_table "ldpages", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "text01"
    t.text     "text02"
    t.text     "text03"
    t.text     "text04"
    t.text     "text05"
    t.text     "text06"
    t.text     "text07"
    t.text     "text08"
    t.text     "text09"
    t.text     "text10"
    t.text     "text11"
    t.text     "text12"
    t.text     "text13"
    t.text     "text14"
    t.text     "text15"
    t.text     "text16"
    t.text     "text17"
    t.text     "text18"
    t.text     "text19"
    t.text     "text20"
    t.text     "text21"
    t.text     "text22"
    t.text     "text23"
    t.text     "text24"
    t.text     "text25"
    t.text     "text26"
    t.text     "text27"
    t.text     "text28"
    t.text     "text29"
    t.text     "text30"
    t.string   "image01"
    t.string   "image02"
    t.string   "image03"
    t.string   "image04"
    t.string   "image05"
    t.string   "image06"
    t.string   "image07"
    t.string   "image08"
    t.string   "image09"
    t.string   "image10"
    t.string   "image11"
    t.string   "image12"
    t.string   "image13"
    t.string   "image14"
    t.string   "image15"
    t.string   "image16"
    t.string   "image17"
    t.string   "image18"
    t.string   "image19"
    t.string   "image20"
    t.string   "image21"
    t.string   "image22"
    t.string   "image23"
    t.string   "image24"
    t.string   "image25"
    t.string   "image26"
    t.string   "image27"
    t.string   "image28"
    t.string   "image29"
    t.string   "image30"
    t.integer  "user_id"
    t.integer  "template_id"
  end

  create_table "templates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
