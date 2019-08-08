class AddTitleToTranslations < ActiveRecord::Migration[5.2]
  def change
    add_column :translations, :title, :string
  end
end
