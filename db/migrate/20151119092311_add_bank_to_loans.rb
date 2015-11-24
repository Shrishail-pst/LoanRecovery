class AddBankToLoans < ActiveRecord::Migration
  def change
    add_reference :loans, :bank, index: true
  end
end
