class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :address
      t.string :contact_number
      t.string :branch
      t.string :email

      t.timestamps
    end
  end
end
