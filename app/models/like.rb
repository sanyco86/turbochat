class Like < ApplicationRecord
  belongs_to :user
  belongs_to :message, counter_cache: true

  validates :user_id, uniqueness: { scope: :message_id }
end
