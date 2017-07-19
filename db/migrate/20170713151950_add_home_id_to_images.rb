class AddHomeIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :home_id, :integer
  end
end
