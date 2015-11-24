class AddLoannameToLoans < ActiveRecord::Migration
  def change
    add_column :loans, :loanname, :string
  end
end
