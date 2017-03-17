class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.date :date
      t.float :subtotal
      t.float :tax
      t.float :discount
      t.float :total

      t.timestamps
    end
  end
end
