class AddAttrEncryptedToDiaries < ActiveRecord::Migration[5.2]
  def change
    add_column :diaries, :encrypted_diary_iv, :text
  end
end
