json.extract! admin, :id, :username, :first_name, :last_name, :email, :password, :created_at, :updated_at
json.url admin_url(admin, format: :json)
