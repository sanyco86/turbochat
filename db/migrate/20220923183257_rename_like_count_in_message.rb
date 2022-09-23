class RenameLikeCountInMessage < ActiveRecord::Migration[7.0]
  def change
    change_table :messages do |t|
      t.rename :like_count, :likes_count
    end
  end
end
