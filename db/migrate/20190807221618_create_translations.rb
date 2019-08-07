class CreateTranslations < ActiveRecord::Migration[5.2]
  def change
    create_table :translations do |t|
      t.text :content
      t.string :status
      t.integer :translator_id
      t.integer :text_id

      t.timestamps
    end
  end
end
