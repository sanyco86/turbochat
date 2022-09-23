module LikesHelper
  def likes(message, user)
    heart = message.likes.exists?(user_id: user.id) ? "🧡" : "🤍"

    heart << " #{message.like_count}" if message.like_count.positive?

    heart
  end
end
