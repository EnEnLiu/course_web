class CourseType < ApplicationRecord
  belongs_to :course
  belongs_to :type
end
