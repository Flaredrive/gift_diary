class RemoveNotNullFromPostsCategoryTag < ActiveRecord::Migration[8.0]
  def change
    change_column_null :posts, :category_tag_id, true
  end
end
