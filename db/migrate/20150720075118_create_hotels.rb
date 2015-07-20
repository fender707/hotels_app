class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :rating
      t.boolean :breakfast
      t.text :description
      t.decimal :price
      t.string :photo
      t.string :address

      t.timestamps
    end
  end
end
