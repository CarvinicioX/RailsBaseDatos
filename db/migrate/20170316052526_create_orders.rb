class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :constancy_id
      t.integer :bill_id
      t.string :type
      t.string :observation

      t.timestamps
    end
    add_index :orders, :constancy_id
    add_index :orders, :bill_id
  end
end
