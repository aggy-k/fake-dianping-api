class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :city
      t.string :country
      t.float :longitude
      t.float :latitude
      t.string :phone
      t.string :image

      t.timestamps
    end
  end
end
