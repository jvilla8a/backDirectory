json.extract! medic, :id, :name, :address, :phone, :coord, :price, :schedule, :speciality, :email, :experience, :score, :city_id, :created_at, :updated_at
json.url medic_url(medic, format: :json)
