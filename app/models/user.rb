class User < ApplicationRecord
  has_secure_password

  has_many :recipes
  
  has_many :reviews

  validates :username, uniqueness: true
  validates :username, presence: true
  validates :username, format: {without: /\s/, message:"must contain no spaces"}

  validates :password, length: 6..10

end
