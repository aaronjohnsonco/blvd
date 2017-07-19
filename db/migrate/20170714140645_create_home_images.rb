class CreateHomeImages < ActiveRecord::Migration[5.0]
  def change
    create_table :home_images do |t|
      t.string :image
      t.integer :home_id

      t.timestamps
    end
  end
end
