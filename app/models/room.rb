class Room < ApplicationRecord
  validates :name, presence: true
  validates :image_name, presence: true
end
