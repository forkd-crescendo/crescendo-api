class CreateFavouriteUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :favourite_users do |t|
      add_column :users, :user_id, :integer
      add_column :users, :favourite_user_id, :integer

      t.timestamps
    end
  end
end
