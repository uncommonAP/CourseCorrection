class Style < ApplicationRecord
  has_many :directories
  has_many :skills, through: :directories
  validates :name, presence: true
end
