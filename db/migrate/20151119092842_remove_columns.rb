class RemoveColumns < ActiveRecord::Migration
  def change
  remove_column :loans, :loan_id
  remove_column :loans, :loan_amount
  remove_column :loans, :amount_paid

  end
 def self.up
end
end
