json.extract! user, :id, :name, :email, :phone, :like, :city_id, :created_at, :updated_at
json.url user_url(user, format: :json)
