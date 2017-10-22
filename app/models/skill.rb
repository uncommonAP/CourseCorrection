class Skill < ApplicationRecord
  has_many :resources
  has_many :examples, through: :resources
  has_many :directories
  validates :name, presence: true
end
