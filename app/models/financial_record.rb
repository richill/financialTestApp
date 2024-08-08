class FinancialRecord < ApplicationRecord

  def self.double_amount
    amount*2
  end

  def self.total_amount
    sum(:amount).to_i
  end

  def self.average_amount
    average(:amount)
  end
end
