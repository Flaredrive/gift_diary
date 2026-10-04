class AddColumnsToCommentLikes < ActiveRecord::Migration[8.0]
  def change
    add_reference :comment_likes, :user, null: false, foreign_key: true
    add_reference :comment_likes, :comment, null: false, foreign_key: true
  end
end
