class Message < ApplicationRecord
  belongs_to :room
  validates :body, presence: true, length: { maximum: 100 }
end
