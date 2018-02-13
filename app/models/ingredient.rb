class Ingredient < ApplicationRecord
  has_many :ingredientrecipes
  has_many :recipes, through: :ingredientrecipes
end
