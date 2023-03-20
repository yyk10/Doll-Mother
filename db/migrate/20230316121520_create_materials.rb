class CreateMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :materials do |t|
      
      t.references :clothe, foreign_key: true
      t.string :name, null: false
      
      t.timestamps
    end
  end
end
