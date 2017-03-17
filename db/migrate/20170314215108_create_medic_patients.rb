class CreateMedicPatients < ActiveRecord::Migration[5.0]
  def change
    create_table :medic_patients do |t|
      t.references :patient, foreign_key: true
      t.references :medic, foreign_key: true

      t.timestamps
    end
  end
end
