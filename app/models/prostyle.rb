class Prostyle < ApplicationRecord
  belongs_to :profile
  belongs_to :style
  validates :style_id, uniqueness: {context: :profile_id}
end
