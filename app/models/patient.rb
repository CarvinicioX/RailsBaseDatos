class Patient < ApplicationRecord
	has_one :expedient
	has_many :medic_patients
	has_many :medics, through: :medic_patients
end
