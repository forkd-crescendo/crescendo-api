class RemoveCreatedonFromArtworks < ActiveRecord::Migration[5.2]
  def change
    remove_column :artworks, :created_on, :datetime
  end
end
