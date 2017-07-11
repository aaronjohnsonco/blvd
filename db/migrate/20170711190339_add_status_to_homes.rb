class AddStatusToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :status, :string
  end
end
