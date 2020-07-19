class Course < ApplicationRecord
  has_many :course_records
  has_many :users, through: :course_record
end
