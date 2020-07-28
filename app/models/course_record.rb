class CourseRecord < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validate :able_buy

  def able_buy
    unless courren_user.course_record.is_exp && course.present?
      errors.add(:course_record, 'course is present')
  end
end
