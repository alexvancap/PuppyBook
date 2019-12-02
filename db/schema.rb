# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_02_223627) do

  create_table "friends", force: :cascade do |t|
    t.integer "user1_id"
    t.integer "user2_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.integer "likes"
    t.integer "user_id"
  end

  create_table "puppies", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "age"
    t.string "picture"
    t.string "bio"
    t.string "password"
    t.string "email"
  end

end
