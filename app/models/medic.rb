class Medic < ApplicationRecord
	has_many :medic_patients
	has_many :patients, through: :medic_patients
end
