class AddMapToCommunities < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :map, :string
  end
end
