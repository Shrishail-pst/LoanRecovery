class AddRuleToLoans < ActiveRecord::Migration
  def change
    add_reference :loans, :rule, index: true
  end
end
