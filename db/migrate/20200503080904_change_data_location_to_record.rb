class ChangeDataLocationToRecord < ActiveRecord::Migration[5.2]
  def change
    change_column :records, :location, :string
  end
end
