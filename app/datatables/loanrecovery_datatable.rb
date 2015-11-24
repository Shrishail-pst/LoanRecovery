class LoanrecoveryDatatable < AjaxDatatablesRails::Base

include AjaxDatatablesRails::Extensions::Kaminari
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['defaulters.name' ,'defaulters.phone']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['defaulters.name' ,'defaulters.phone']
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
    record.id,
    record.name,
        record.phone,
        record.address,
    record.email,
    record.status,
    
      ]
    end
  end

  def get_raw_records
    # insert query here
    Defaulter.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
