class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.belongs_to :users, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.float :value
      t.float :commision
      t.string :mo_num
      t.text :address
      t.string :status
      t.timestamps
    end
  end
end
