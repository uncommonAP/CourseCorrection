class Example < ApplicationRecord
  has_many :directories
  has_many :skills, through: :directories
  validates :url, presence: true
  validates :title, presence: true
end
