class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      
      t.string :title, null:false
      t.text :form, null:false
      t.integer :status, null: false
      
      t.timestamps
    end
  end
end
