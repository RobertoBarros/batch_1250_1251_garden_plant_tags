class Plant < ApplicationRecord
  belongs_to :garden
  has_many :classifications, dependent: :destroy
  has_many :tags, through: :classifications
  validates :name, :image_url, presence: true
end
