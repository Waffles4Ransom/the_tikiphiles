class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :liquor
      t.string :served
      t.integer :rating
      t.string :bar 
      t.string :location
      t.string :image_path
      t.integer :user_id
      t.timestamps
    end 
  end
end
