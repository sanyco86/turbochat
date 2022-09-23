class MessageDecorator < ApplicationDecorator
  delegate_all

  def heart(user_id)
    if object.likes.exists?(user_id: user_id)
      "🧡"
    else
      "🤍"
    end
  end

  def likes_count
    object.likes_count if object.likes_count.positive?
  end
end
