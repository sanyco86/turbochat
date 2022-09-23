module LikesHelper
  def likes(message, user_id)
    heart = message.likes.exists?(user_id: user_id) ? "🧡" : "🤍"

    heart << " #{message.like_count}" if message.like_count.positive?

    heart
  end
end
