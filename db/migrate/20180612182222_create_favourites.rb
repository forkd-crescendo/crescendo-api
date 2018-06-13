class CreateFavourites < ActiveRecord::Migration[5.2]
  def change
    create_table :favourites do |t|
      t.references :artwork, foreign_key: true
      t.datetime :created_on

      t.timestamps
    end
  end
end
