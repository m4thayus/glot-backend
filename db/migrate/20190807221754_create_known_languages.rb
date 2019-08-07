class CreateKnownLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :known_languages do |t|
      t.integer :user_id
      t.integer :difficulty_id
      t.integer :language_id
      t.boolean :vetted

      t.timestamps
    end
  end
end
