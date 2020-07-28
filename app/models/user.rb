class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :course_records
  has_many :courses, through: :course_record
  has_many :course_tags
  has_many :tags, through: :course_tags

  has_secure_token :auth_token
end
