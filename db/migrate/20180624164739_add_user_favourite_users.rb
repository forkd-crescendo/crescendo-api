class AddUserFavouriteUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :favourite_users, :user_id, :integer
      add_column :favourite_users, :favourite_id, :integer
  end
end
