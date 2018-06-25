class ModifyFavouriteUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user_id, :integer
    remove_column :users, :favourite_user_id, :integer
  end
end
