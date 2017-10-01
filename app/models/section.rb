class Section < ApplicationRecord
  validates :building, format: { with: /\A[A-Za-z_]+\z/,
  message: "Bad formatting of field" }
  validates :building, length: { in: 2..25, message: "name needs to be between 2 and 25 characters in length"}
  belongs_to :professor
  belongs_to :course
end
