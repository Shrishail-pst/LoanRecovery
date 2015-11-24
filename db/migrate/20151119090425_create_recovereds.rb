class CreateRecovereds < ActiveRecord::Migration
  def change
    create_table :recovereds do |t|
      t.integer :recovered_amount
      t.integer :recovery_time
      t.integer :recovery_charges

      t.timestamps
    end
  end
end
