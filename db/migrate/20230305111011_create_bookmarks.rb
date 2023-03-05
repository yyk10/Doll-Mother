class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :clothe, null: false, foreign_key: true
      #null: falseを付与

      t.timestamps
    end
     add_index :bookmarks, [:user_id, :clothe_id], unique: true
     #user_idとclothe_idの組み合わせが一意になるように(複合キー)設定
  end
end
