class AddDoubleamountToFinancialRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :financial_records, :double_amount, :decimal
    add_index :financial_records, :double_amount
  end
end
