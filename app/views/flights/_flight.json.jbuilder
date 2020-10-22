json.extract! flight, :id, :date, :location, :duration, :user_id, :created_at, :updated_at
json.url flight_url(flight, format: :json)
