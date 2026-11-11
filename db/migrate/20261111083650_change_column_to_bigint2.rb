class ChangeColumnToBigint2 < ActiveRecord::Migration[8.0]
  def change
    change_column :comment_likes, :comment_id, :bigint
    change_column :comment_likes, :user_id, :bigint
    change_column :comments, :gender_tag_id, :bigint
    change_column :comments, :post_id, :bigint
    change_column :comments, :relationship_tag_id, :bigint
    change_column :comments, :user_id, :bigint
    change_column :post_likes, :post_id, :bigint
    change_column :post_likes, :user_id, :bigint
    change_column :posts, :category_tag_id, :bigint
    change_column :sessions, :admin_id, :bigint
  end
end
