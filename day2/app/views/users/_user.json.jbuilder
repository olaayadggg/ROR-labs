json.extract! user, :id, :Name, :Email, :Password, :created_at, :updated_at
json.url user_url(user, format: :json)
