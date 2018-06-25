class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
     rename_column :artworks, :imagen, :thumbnail
     rename_column :artworks, :url, :videoId
  end
end
