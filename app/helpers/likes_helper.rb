module LikesHelper
  def likes_count(message)
    message.likes_count if message.likes_count.positive?
  end

  def heart(message, user_id)
    message.likes.exists?(user_id: user_id) ? "🧡" : "🤍"
  end
end
