class Artwork < ApplicationRecord
  # validations
  validates_presence_of :title, :created_on
end
