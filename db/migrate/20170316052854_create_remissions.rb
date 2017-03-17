class CreateRemissions < ActiveRecord::Migration[5.0]
  def change
    create_table :remissions do |t|
      t.integer :constancy_id
      t.integer :laboratory_id
      t.date :date

      t.timestamps
    end
    add_index :remissions, :constancy_id
    add_index :remissions, :laboratory_id
  end
end
