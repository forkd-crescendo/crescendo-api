class FavouriteUser < ApplicationRecord
  belongs_to :user
  validates_presence_of :favourite_id
end
