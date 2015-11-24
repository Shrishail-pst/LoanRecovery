require 'roo'
class Loanrecovery < ActiveRecord::Base
	
	belongs_to :bank 
	has_many :bill
	has_one :recovered
	belongs_to :loan
	BANKS = %w[]
	LOANS = %w[EDUCATION_LOAN VEHICLE_LOAN HOME_LOAN]

	def self.import(file)
  allowed_attributes = ["name","phone","address","email","status"]
  spreadsheet = open_spreadsheet(file)
  header = spreadsheet.row(1)
  (2..spreadsheet.last_row).each do |i|
    row = Hash[[header, spreadsheet.row(i)].transpose]
    product = find_by_id(row["id"]) || new
    product.attributes = row.to_hash.select { |k,v| allowed_attributes.include? k }
    product.save!
  end
end

def self.open_spreadsheet(file)
  case File.extname(file.original_filename)
  when ".csv" then Roo::CSV.new(file.path, packed:nil, file_warning: :ignore)
  when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
  when ".xlsx" then Roo::Excelx.new(file.path, packed:nil, file_warning: :ignore)
  else raise "Unknown file type: #{file.original_filename}"
  end
end
end

 
