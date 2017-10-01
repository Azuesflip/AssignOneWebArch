class Professor < ApplicationRecord
	GENDERS = {'M' => 'male', 'F' =>'female'}
	validates :name, :age, :gender, presence: true
    validates :name, format: { with: /\A[A-Za-z_]+\z/,
    message: "Bad formatting of field" }
    validates :age, format: { with: /\A[0-9_]+\z/,
    message: "Bad formatting of field" }
    validates_inclusion_of :gender, in: GENDERS.keys, message: "Please either select 'M' or 'F'"
    validates :name, length: { in: 2..40, message: "The submission was not between 2-40 characters"}
	has_many:section
end
