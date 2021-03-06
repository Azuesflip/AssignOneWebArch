class Course < ApplicationRecord
	validates :name, :field_of_study, :description, presence: true
    validates :name, :field_of_study, format: { with: /\A[A-Za-z0-9 _]*[A-Za-z0-9][A-Za-z0-9 _]+\z/,
    message: "Bad formatting of field" }
    validates :name, :field_of_study, length: { in: 2..40, message: "The submission was not between 2-40 characters"}
    validates :description, length: {in: 2..2500, message: "The submission was not between 2-2500 characters"}
	has_many:section
end
