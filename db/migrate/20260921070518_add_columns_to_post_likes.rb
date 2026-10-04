class AddColumnsToPostLikes < ActiveRecord::Migration[8.0]
  def change
    add_reference :post_likes, :user, null: false, foreign_key: true
    add_reference :post_likes, :post, null: false, foreign_key: true
  end
end
