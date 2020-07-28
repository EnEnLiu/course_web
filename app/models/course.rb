class Course < ApplicationRecord
  validates :title, presence: true
  validates :money, presence: true
  validates :course_amount, presence: true

  has_many :course_records
  has_many :users, through: :course_record
  has_many :course_types
  has_many :types, through: :course_types

  scope :result_type, -> (search){ where('course_type LIKE ? , "%#{params[search]}%"') }
  scope :is_exp, -> { where('course_records.expiry_date < ? , Time.current') }
end
