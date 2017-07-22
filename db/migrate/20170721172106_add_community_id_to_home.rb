class AddCommunityIdToHome < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :community_id, :integer
  end
end
