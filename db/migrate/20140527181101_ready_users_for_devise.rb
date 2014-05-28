class ReadyUsersForDevise < ActiveRecord::Migration
  def change
  	remove_column :users, :username
  	remove_column :users, :password
  	remove_column :users, :age
  end
end
