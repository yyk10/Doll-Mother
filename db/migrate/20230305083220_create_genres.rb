class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      
      t.integer :type_id, null: false
      t.string :name, null: false
      

      t.timestamps
    end
  end
end
