class AddImageDataToHomeImage < ActiveRecord::Migration[5.0]
  def change
    add_column :home_images, :image_data, :text
  end
end
