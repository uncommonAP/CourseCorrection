class Profile < ApplicationRecord
  belongs_to :course
  has_many :prostyles
  has_many :styles, through: :prostyles
  validates :course_id, uniqueness: true
end
