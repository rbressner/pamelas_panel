json.extract! student, :id, :username, :first_name, :last_name, :email, :password, :age, :education, :teacher_id, :created_at, :updated_at
json.url student_url(student, format: :json)
