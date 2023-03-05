class CreateClothes < ActiveRecord::Migration[6.1]
  def change
    create_table :clothes do |t|
      
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.integer :bookmark_id, null: false
      t.integer :comment_id, null:false
      t.integer :type_id, null: false
      t.string :name, null: false
      t.text :introduction, null: false
      t.string :making_time, null:false
      t.text :point, null:false
      t.boolean :is_active,null: false, default: true
      t.boolean :is_active,null: false, default: true

      t.timestamps
    end
  end
end
