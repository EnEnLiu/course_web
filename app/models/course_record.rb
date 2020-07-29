class CourseRecord < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validate :able_buy

  scope :unexpired -> { where( 'expiry_date > ?', Time.now ) }

  def able_buy
    unless course.on_market? && user.course_records.where(course_id: course_id).unexpired.count > 0
      errors.add(:course_record, 'course is present')
  end
end
