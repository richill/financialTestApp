# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_08_08_212211) do
  create_table "financial_records", force: :cascade do |t|
    t.date "date"
    t.string "description"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "double_amount"
    t.decimal "debit_paid_out"
    t.decimal "credit_paid_in"
    t.index ["amount"], name: "index_financial_records_on_amount"
    t.index ["credit_paid_in"], name: "index_financial_records_on_credit_paid_in"
    t.index ["date"], name: "index_financial_records_on_date"
    t.index ["debit_paid_out"], name: "index_financial_records_on_debit_paid_out"
    t.index ["description"], name: "index_financial_records_on_description"
    t.index ["double_amount"], name: "index_financial_records_on_double_amount"
  end

end
