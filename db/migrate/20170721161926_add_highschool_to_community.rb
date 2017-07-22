class AddHighschoolToCommunity < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :highschool, :string
  end
end
