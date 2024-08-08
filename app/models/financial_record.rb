class FinancialRecord < ApplicationRecord

  def double_data_amount
    amount*2
  end

  def self.total_amount
    sum(:amount).to_f
  end

  def self.average_amount
    average(:amount)
  end
end
