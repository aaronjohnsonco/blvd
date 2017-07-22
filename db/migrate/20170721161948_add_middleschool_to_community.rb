class AddMiddleschoolToCommunity < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :middleschool, :string
  end
end
