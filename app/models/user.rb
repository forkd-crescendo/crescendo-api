# app/models/user.rb
class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_many :artworks, foreign_key: :created_by
  has_many :favourites, class_name: "FavouriteUser", foreign_key: "user_id"
  # Validations
  validates_presence_of :name, :email, :password_digest
end
