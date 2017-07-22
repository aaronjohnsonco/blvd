class AddAdminToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :admin, :boolean, default: false
  end
end

# User.create!({:email => "guy@gmail.com", :roles => ["admin"], :password => "111111", :password_confirmation => "111111" })
