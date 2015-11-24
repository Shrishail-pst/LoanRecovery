class AddBankToLoanrecoveries < ActiveRecord::Migration
  def change
    add_reference :loanrecoveries, :bank, index: true
  end
end
