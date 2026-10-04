class CreateRelationshipTags < ActiveRecord::Migration[8.0]
  def change
    create_table :relationship_tags do |t|
      t.timestamps
    end
  end
end
