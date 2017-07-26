class AddSlugToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :slug, :string
    add_index :homes, :slug
  end
end
