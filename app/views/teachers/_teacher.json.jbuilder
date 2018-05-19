json.extract! teacher, :id, :username, :first_name, :last_name, :email, :password, :age, :salary, :education, :admin_id, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
