class AddColumnsToGenderTags < ActiveRecord::Migration[8.0]
  def change
    add_column :gender_tags, :name, :string, null: false
  end
end
