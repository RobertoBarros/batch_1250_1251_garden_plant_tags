class Tag < ApplicationRecord
  has_many :classifications, dependent: :destroy
  has_many :plants, through: :classifications
  validates :name, presence: true, uniqueness: true
end
