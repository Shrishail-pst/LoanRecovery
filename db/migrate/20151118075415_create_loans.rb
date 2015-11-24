class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.string :loan_id
      t.string :loan_type
      t.integer :interest_rate

      t.timestamps
    end
  end
end
