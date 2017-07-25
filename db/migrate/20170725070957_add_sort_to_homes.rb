class AddSortToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :sort, :integer
  end
end
