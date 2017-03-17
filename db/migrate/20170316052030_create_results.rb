class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :constancy_id
      t.date :date
      t.string :description

      t.timestamps
    end
    add_index :results, :constancy_id
  end
end
