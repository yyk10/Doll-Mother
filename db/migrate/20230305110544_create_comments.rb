class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :comment_content
      t.references :user, null: false, foreign_key: true
      t.references :clothe, null: false, foreign_key: true
      #t.datetime :created_at, null: false
      #t.datetime :updated_at, null:false

      t.timestamps
    end
  end
end
