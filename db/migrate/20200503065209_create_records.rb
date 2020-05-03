class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.references :user,       null: false, foreign_key: true
      t.integer :location
      t.integer :weather
      t.integer :temp
      t.integer :pressure
      t.integer :happy_level
      t.integer :stress_level
      t.timestamps
    end
  end
end
