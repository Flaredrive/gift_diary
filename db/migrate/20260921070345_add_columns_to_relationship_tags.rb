class AddColumnsToRelationshipTags < ActiveRecord::Migration[8.0]
  def change
    add_column :relationship_tags, :name, :string, null: false
  end
end
