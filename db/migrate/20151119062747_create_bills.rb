class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.integer :bill_id
      t.integer :amount_paid
      t.integer :remained_amount
      t.integer :remained_time

      t.timestamps
    end
  end
end
