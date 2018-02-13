class IngredientsController < ApplicationController
  
  def new
  end

  def create
    @ingredient = Ingredient.create(name: params[:name])
    @recipe = Recipe.find(params[:recipe_id])

    @ingredientrecipe = Ingredientrecipe.create(ingredient_id: @ingredient.id, recipe_id: @recipe.id)
    redirect_to recipes_path
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity)
  end

end
