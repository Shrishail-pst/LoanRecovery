class CreateLoanrecoveries < ActiveRecord::Migration
  def change
    create_table :loanrecoveries do |t|

      t.string :name
      t.string :phone
      t.string :address
      t.string :email
      t.boolean :status
      t.timestamps
    end
  end
  
end
