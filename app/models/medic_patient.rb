class MedicPatient < ApplicationRecord
  belongs_to :patient
  belongs_to :medic
end
