class AddLatAndLongToCommunities < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :latitude, :float
    add_column :communities, :longitude, :float
  end
end
