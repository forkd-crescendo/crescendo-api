class Favourite < ApplicationRecord
  belongs_to :artwork
  # validation
  validates_presence_of :created_on
end
