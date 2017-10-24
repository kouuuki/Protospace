json.extract! user, :id, :name, :image, :member, :profile, :work, :created_at, :updated_at
json.url user_url(user, format: :json)
