# app/models/user.rb
class User < ApplicationRecord
  # encrypt password
  has_secure_password

  # Model associations
  has_many :artworks, foreign_key: :created_on
  # Validations
  validates_presence_of :name, :email, :password_digest
end
