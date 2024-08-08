class FinancialRecord < ApplicationRecord
  def self.total_amount
    sum(:amount)
  end

  def self.average_amount
    average(:amount)
  end
end
