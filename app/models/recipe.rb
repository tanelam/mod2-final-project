class Recipe < ApplicationRecord
  mount_uploader :recipe_photo, RecipePhotoUploader

  belongs_to :user
  
  has_many :directions
  has_many :ingredients

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :recipe_photo, presence: true


end
