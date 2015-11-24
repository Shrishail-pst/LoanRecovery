class AddLoanToLoanrecoveries < ActiveRecord::Migration
  def change
    add_reference :loanrecoveries, :loan, index: true
  end
end
