class FinancialRecordsController < ApplicationController
  def index
    @financial_records = FinancialRecord.all
  end

  def import
    file = params[:file]
    if file.blank?
      redirect_to financial_records_upload_fail_path
    else
      redirect_to root_url
    end

    # return redirect_to root_url, alert: "Please upload a valid Excel file." if file.blank?

    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      FinancialRecord.create!(row)
    end
    redirect_to root_url, notice: "Financial records imported."
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
