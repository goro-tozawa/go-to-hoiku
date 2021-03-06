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

ActiveRecord::Schema.define(version: 2021_02_08_015844) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "childcare_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "facility_name", null: false
    t.string "facility_name_kana", null: false
    t.string "business_form", null: false
    t.string "facility_address", null: false
    t.string "facility_phone_number", null: false
    t.string "representative", null: false
    t.string "representative_phone_number", null: false
    t.integer "times", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.text "self_introduction"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_childcare_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_childcare_users_on_reset_password_token", unique: true
  end

  create_table "domiciles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "postal_code", null: false
    t.integer "area_id", null: false
    t.string "municipality", null: false
    t.string "address", null: false
    t.string "building_name"
    t.string "phone_number", null: false
    t.bigint "purchase_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["purchase_id"], name: "index_domiciles_on_purchase_id"
  end

  create_table "purchases", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "work_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_purchases_on_user_id"
    t.index ["work_id"], name: "index_purchases_on_work_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "name_kana", null: false
    t.date "birthday", null: false
    t.string "nickname", null: false
    t.string "postal_code", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "qualification", null: false
    t.integer "gender", null: false
    t.text "self_introduction"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "work_title", null: false
    t.string "facility_name", null: false
    t.string "job_description", null: false
    t.integer "person", null: false
    t.datetime "recruiting_days", null: false
    t.integer "recruiting_times", null: false
    t.integer "hourly_wage", null: false
    t.bigint "childcare_user_id", null: false
    t.index ["childcare_user_id"], name: "index_works_on_childcare_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "purchases", "users"
  add_foreign_key "purchases", "works"
end
