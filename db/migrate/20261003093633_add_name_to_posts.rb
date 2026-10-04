class AddNameToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :name, :string, null: false
  end
end
