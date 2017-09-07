class Section < ApplicationRecord
  belongs_to :professor
  belongs_to :classes_setup
end
