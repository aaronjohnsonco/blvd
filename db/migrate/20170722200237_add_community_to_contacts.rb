class AddCommunityToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :community, :string
  end
end