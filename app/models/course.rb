class Course < ApplicationRecord
  has_many :course_record
  has_many :user, through: :course_record
end
