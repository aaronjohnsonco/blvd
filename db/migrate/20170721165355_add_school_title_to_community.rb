class AddSchoolTitleToCommunity < ActiveRecord::Migration[5.0]
  def change
    add_column :communities, :school_title, :string
  end
end
