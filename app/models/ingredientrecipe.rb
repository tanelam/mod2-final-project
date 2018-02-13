class Ingredientrecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  def ingredient_name=(name)
    self.ingredient = Ingredient.find_or_create_by(name: name)
  end

  def ingredient_name
    self.ingredient
  end
end
