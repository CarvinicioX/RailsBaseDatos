class CreateMedics < ActiveRecord::Migration[5.0]
  def change
    create_table :medics do |t|
      t.string :name
      t.string :surname
      t.date :birth_date
      t.string :specialty

      t.timestamps
    end
  end
end
