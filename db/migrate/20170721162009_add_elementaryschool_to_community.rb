class AddElementaryschoolToCommunity < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :elementaryschool, :string
  end
end
