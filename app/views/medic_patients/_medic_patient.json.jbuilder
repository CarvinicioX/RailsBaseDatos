json.extract! medic_patient, :id, :patient_id, :medic_id, :created_at, :updated_at
json.url medic_patient_url(medic_patient, format: :json)
