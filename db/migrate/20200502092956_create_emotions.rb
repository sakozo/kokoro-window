class CreateEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :emotions do |t|
      t.references :user,       null: false, foreign_key: true
      t.integer :emotion
      t.integer :status
      t.timestamps
    end
  end
end
