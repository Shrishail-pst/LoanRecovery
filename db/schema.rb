# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151123141834) do

  create_table "banks", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact_number"
    t.string   "branch"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rule_id"
  end

  add_index "banks", ["rule_id"], name: "index_banks_on_rule_id", using: :btree

  create_table "bills", force: true do |t|
    t.integer  "bill_id"
    t.integer  "amount_paid"
    t.integer  "remained_amount"
    t.integer  "remained_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "loanrecovery_id"
    t.integer  "totalamount"
    t.date     "dateofpayment"
  end

  add_index "bills", ["loanrecovery_id"], name: "index_bills_on_loanrecovery_id", using: :btree

  create_table "defaulters", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loanrecoveries", force: true do |t|
    t.string   "name"
    t.string   "phone",      null: false
    t.string   "address"
    t.string   "email"
    t.integer  "bank_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "bank",       null: false
    t.integer  "loan_id"
    t.string   "bankname"
  end

  add_index "loanrecoveries", ["bank"], name: "bank_idx", using: :btree
  add_index "loanrecoveries", ["bank_id"], name: "index_loanrecoveries_on_bank_id", using: :btree
  add_index "loanrecoveries", ["loan_id"], name: "index_loanrecoveries_on_loan_id", using: :btree
  add_index "loanrecoveries", ["phone"], name: "phone_UNIQUE", unique: true, using: :btree

  create_table "loans", force: true do |t|
    t.string   "loan_id"
    t.integer  "loan_amount"
    t.integer  "amount_paid"
    t.string   "loan_type"
    t.integer  "interest_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "bank_id"
    t.integer  "rule_id"
    t.string   "loanname"
  end

  add_index "loans", ["bank_id"], name: "index_loans_on_bank_id", using: :btree
  add_index "loans", ["rule_id"], name: "index_loans_on_rule_id", using: :btree

  create_table "recovereds", force: true do |t|
    t.integer  "recovered_amount"
    t.integer  "recovery_time"
    t.integer  "recovery_charges"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "loanrecovery_id"
  end

  add_index "recovereds", ["loanrecovery_id"], name: "index_recovereds_on_loanrecovery_id", using: :btree

  create_table "resumes", force: true do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", force: true do |t|
    t.string   "rule_id"
    t.string   "rule_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
