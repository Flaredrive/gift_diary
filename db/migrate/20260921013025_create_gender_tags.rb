class CreateGenderTags < ActiveRecord::Migration[8.0]
  def change
    create_table :gender_tags do |t|
      t.timestamps
    end
  end
end
