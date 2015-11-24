class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.string :rule_id
      t.string :rule_name

      t.timestamps
    end
  end
end
