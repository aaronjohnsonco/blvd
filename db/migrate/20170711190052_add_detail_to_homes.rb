class AddDetailToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :detail, :text
  end
end
