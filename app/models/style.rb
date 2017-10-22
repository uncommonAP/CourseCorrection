class Style < ApplicationRecord
  has_many :directories
  has_many :prostyles
  has_many :skills, through: :directories
  has_many :profiles, through: :prostyles
  validates :name, presence: true
end
