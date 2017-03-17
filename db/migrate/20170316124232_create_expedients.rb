class CreateExpedients < ActiveRecord::Migration[5.0]
  def change
    create_table :expedients do |t|
      t.integer :patient_id
      t.string :name
      t.string :surname
      t.date :birth_date
      t.string :genre
      t.string :civil_status
      t.string :birth_place
      t.string :occupation
      t.string :blood_type
      t.string :address
      t.string :email

      t.timestamps
    end
    add_index :expedients, :patient_id
  end
end
