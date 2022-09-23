class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  validates :body, presence: true

  scope :scoped, -> { order(:id) }
end
