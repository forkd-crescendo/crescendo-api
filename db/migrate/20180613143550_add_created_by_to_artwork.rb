class AddCreatedByToArtwork < ActiveRecord::Migration[5.2]
  def change
    add_column :artworks, :created_by, :string
  end
end
