class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :community
      t.string :lot
      t.string :price
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.text :description
      t.string :sqft
      t.string :stories
      t.string :bedrooms
      t.string :baths
      t.string :garage
      t.string :status

      t.timestamps
    end
  end
end
