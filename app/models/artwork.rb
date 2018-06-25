class Artwork < ApplicationRecord
  # validations
  validates_presence_of :title, :description, :videoId
end
