json.extract! user, :id, :name, :cell, :age, :created_at, :updated_at
json.url user_url(user, format: :json)
