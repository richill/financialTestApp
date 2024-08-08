class FinancialRecordsController < ApplicationController
  def index
    @financial_records = FinancialRecord.all
  end

  def import
    file = params[:file]
    if file.blank?
      # binding.pry
      redirect_to upload_fail_path
    else
      spreadsheet = Roo::Spreadsheet.open(file.path)
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
