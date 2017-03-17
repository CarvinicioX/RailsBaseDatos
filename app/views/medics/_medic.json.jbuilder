json.extract! medic, :id, :name, :surname, :birth_date, :specialty, :created_at, :updated_at
json.url medic_url(medic, format: :json)
