json.extract! student, :id, :name, :age, :gender, :major, :minor, :created_at, :updated_at
json.url student_url(student, format: :json)
