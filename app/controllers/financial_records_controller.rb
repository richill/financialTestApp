class FinancialRecordsController < ApplicationController
  def index
    @financial_records = FinancialRecord.all
    # @total_amount = FinancialRecord.total_amount

    @total_debit_amount = FinancialRecord.total_debit_amount
    @total_credit_amount = FinancialRecord.total_credit_amount
    @total_amount = @total_debit_amount - @total_credit_amount
  end

  def import
    file = params[:file]
    if file.blank?
      redirect_to upload_fail_path
    else
      spreadsheet = Roo::Spreadsheet.open(file.path)
      # binding.pry
      header = spreadsheet.row(1)
      (2..spreadsheet.last_row).each do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        FinancialRecord.create!(row)
      end
      redirect_to root_url, notice: "Financial records imported."
    end
  end

  def export
    @financial_records = FinancialRecord.all
    respond_to do |format|
      format.xlsx {
        response.headers[
          'Content-Disposition'
        ] = "attachment; filename=financial_records.xlsx"
      }
    end
  end

  def upload_fail
  end
end
