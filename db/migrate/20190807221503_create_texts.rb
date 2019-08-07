class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :title
      t.text :content
      t.string :status
      t.integer :pay
      t.integer :creator_id
      t.integer :difficulty_id
      t.integer :source_language_id
      t.integer :target_language_id

      t.timestamps
    end
  end
end
