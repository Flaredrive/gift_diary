class CreateCommentLikes < ActiveRecord::Migration[8.0]
  def change
    create_table :comment_likes do |t|
      t.timestamps
    end
  end
end
