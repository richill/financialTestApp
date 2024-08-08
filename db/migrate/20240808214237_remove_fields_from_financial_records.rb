class RemoveFieldsFromFinancialRecords < ActiveRecord::Migration[7.0]
  def change
    remove_column :financial_records, :double_amount, :decimal
    remove_column :financial_records, :amount, :decimal
  end
end
