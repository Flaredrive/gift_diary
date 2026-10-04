class AddColumnsToComments < ActiveRecord::Migration[8.0]
  def change
    add_reference :comments, :user, null: false, foreign_key: true
    add_reference :comments, :post, null: false, foreign_key: true
    add_reference :comments, :relationship_tag, null: false, foreign_key: true
    add_reference :comments, :gender_tag, null: false, foreign_key: true

    add_column :comments, :body, :text
    add_column :comments, :month, :integer, null: false
    add_column :comments, :rating, :integer, null: false
  end
end
