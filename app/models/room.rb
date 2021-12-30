class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  validates :name, presence: true
  validates :image_name, presence: true
end
