class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :title
      t.datetime :created_on
      t.text :description
      t.string :imagen
      t.string :url

      t.timestamps
    end
  end
end
