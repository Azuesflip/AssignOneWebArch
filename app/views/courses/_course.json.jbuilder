json.extract! course, :id, :name, :field_of_study, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
