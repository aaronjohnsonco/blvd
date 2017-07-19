class AddPlanToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :plan, :string
  end
end
