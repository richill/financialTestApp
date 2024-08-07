class CreateFinancialRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :financial_records do |t|
      t.date :date
      t.string :description
      t.decimal :amount

      t.timestamps
    end
    add_index :financial_records, :date
    add_index :financial_records, :description
    add_index :financial_records, :amount
  end
end
