class AddSortToCommunities < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :sort, :integer
  end
end
