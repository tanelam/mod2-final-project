class Recipe < ApplicationRecord
  mount_uploader :recipe_photo, RecipePhotoUploader

  belongs_to :category

  belongs_to :user

  has_many :reviews

  has_many :ingredientrecipes
  has_many :ingredients, through: :ingredientrecipes
  # cannot use accepts_nested_attributes_for with a has_many has_many relationship
  # accepts_nested_attributes_for :ingredients

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :recipe_photo, presence: true


  # def ingredients_attributes=(ingredients_attributes)
  #   raise ingredients_attributes.inspect
  #
  #   ingredients_attributes.each do |ingredient_attributes|
  #     self.ingredients.build(ingredient_attributes)
  #   end
  # end

  def ingredient_name=(name)
    self.ingredient = Ingredient.find_or_create_by(name: name)
  end

  def ingredient_name
    self.ingredient
  end
end
