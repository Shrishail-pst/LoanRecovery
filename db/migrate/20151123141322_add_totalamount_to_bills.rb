class AddTotalamountToBills < ActiveRecord::Migration
  def change
    add_column :bills, :totalamount, :integer
  end
end
