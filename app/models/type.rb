class Type < ApplicationRecord
  validates :name, presence: true

  has_many :course_types
  has_many :courses, through: :course_types
end
