class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name 
      t.string :category
      t.integer :rating 
      t.string :bar
      t.string :location
      t.integer :user_id
      t.string :image_path
      t.timestamps
    end 
  end
end
