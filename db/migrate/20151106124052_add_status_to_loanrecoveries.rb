class AddStatusToLoanrecoveries < ActiveRecord::Migration
  def change
    add_column :loanrecoveries, :status, :string
  end
end
