class Section < ApplicationRecord
  validates :building, format: { with: /\A[A-Za-z_]+\z/,
  message: "Bad formatting of field" }
  validates :building, length: { in: 2..25, message: "name needs to be between 2 and 25 characters in length"}
  belongs_to :professor
  belongs_to :course
  has_many :enrollment
  def section_with_course_with_professor
  	"#{number} | #{course.name} | #{professor.name}"
  end
end
