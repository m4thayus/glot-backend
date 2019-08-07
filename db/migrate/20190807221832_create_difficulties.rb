class CreateDifficulties < ActiveRecord::Migration[5.2]
  def change
    create_table :difficulties do |t|
      t.integer :level
      t.string :description

      t.timestamps
    end
  end
end
