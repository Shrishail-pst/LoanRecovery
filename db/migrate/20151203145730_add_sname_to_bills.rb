class AddSnameToBills < ActiveRecord::Migration
  def change
    add_column :bills, :sname, :string
  end
end
