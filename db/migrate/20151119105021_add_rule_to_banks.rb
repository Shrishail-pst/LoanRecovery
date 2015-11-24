class AddRuleToBanks < ActiveRecord::Migration
  def change
    add_reference :banks, :rule, index: true
  end
end
