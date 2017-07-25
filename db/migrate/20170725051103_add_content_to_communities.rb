class AddContentToCommunities < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :content, :text
  end
end
