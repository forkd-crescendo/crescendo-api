class RemoveCreatedonFromFavourites < ActiveRecord::Migration[5.2]
  def change
    remove_column :favourites, :created_on, :datetime
  end
end
