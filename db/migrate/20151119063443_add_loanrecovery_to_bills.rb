class AddLoanrecoveryToBills < ActiveRecord::Migration
  def change
    add_reference :bills, :loanrecovery, index: true
  end
end
