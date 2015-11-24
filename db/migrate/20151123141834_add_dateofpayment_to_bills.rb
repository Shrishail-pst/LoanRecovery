class AddDateofpaymentToBills < ActiveRecord::Migration
  def change
    add_column :bills, :dateofpayment, :date
  end
end
