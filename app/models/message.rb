class Message < ApplicationRecord
  has_many :likes, dependent: :destroy

  belongs_to :user
  belongs_to :room

  validates :body, presence: true

  scope :sorted, -> { order(:id) }
end
