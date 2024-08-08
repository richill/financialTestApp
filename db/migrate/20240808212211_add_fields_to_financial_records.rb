class AddFieldsToFinancialRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :financial_records, :debit_paid_out, :decimal
    add_column :financial_records, :credit_paid_in, :decimal
    add_index :financial_records, :debit_paid_out
    add_index :financial_records, :credit_paid_in
  end
end
