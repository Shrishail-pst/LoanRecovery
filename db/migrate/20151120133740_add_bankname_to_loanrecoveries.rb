class AddBanknameToLoanrecoveries < ActiveRecord::Migration
  def change
    add_column :loanrecoveries, :bankname, :string
  end
end
