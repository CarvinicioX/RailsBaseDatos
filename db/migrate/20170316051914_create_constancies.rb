class CreateConstancies < ActiveRecord::Migration[5.0]
  def change
    create_table :constancies do |t|
      t.integer :pacient_id

      t.timestamps
    end
    add_index :constancies, :pacient_id
  end
end
