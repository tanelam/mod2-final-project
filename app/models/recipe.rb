class Recipe < ApplicationRecord
  mount_uploader :recipe_photo, RecipePhotoUploader

  belongs_to :category

  belongs_to :user

  has_many :reviews

  has_many :ingredientrecipes
  has_many :ingredients, through: :ingredientrecipes

  validates :title, presence: true
  validates :description, presence: true
  validates :recipe_photo, presence: true
  validates :directions, presence: true

  accepts_nested_attributes_for :ingredients, reject_if: proc { |attributes| attributes['name'].blank? }

  # cannot use accepts_nested_attributes_for with a has_many has_many relationship
  # accepts_nested_attributes_for :ingredients
  

  def ingredient_name=(name)
    self.ingredient = Ingredient.find_or_create_by(name: name)
  end

  def ingredient_name
    self.ingredient
  end
end
