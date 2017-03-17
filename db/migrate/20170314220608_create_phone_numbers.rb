class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.references :patient, foreign_key: true
      t.string :phone_number

      t.timestamps
    end
  end
end
