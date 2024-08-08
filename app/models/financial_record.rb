class FinancialRecord < ApplicationRecord

  def double_data_amount
    amount*2
  end

  def self.total_amount
    sum(:amount).to_f
  end

  def self.total_debit_amount
    sum(:debit_paid_out).to_f
  end

  def self.total_credit_amount
    sum(:credit_paid_in).to_f
  end
end
