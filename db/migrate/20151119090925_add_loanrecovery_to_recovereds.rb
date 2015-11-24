class AddLoanrecoveryToRecovereds < ActiveRecord::Migration
  def change
    add_reference :recovereds, :loanrecovery, index: true
  end
end
