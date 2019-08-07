class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.boolean :up
      t.integer :user_id
      t.integer :translation_id

      t.timestamps
    end
  end
end
