class IngredientrecipeController < ApplicationController


  def new
    @ingredientrecipe = Ingredientrecipe.new
  end

  def create
    @ingredientrecipe = Ingredientrecipe.create(ingredientrecipe_params)
    redirect_to recipe_path(@ingredientrecipe.recipe)
  end

  private

  def ingredientrecipe_params
    params.require(:ingredientrecipe).permit(:ingredient_name, :recipe_id)
  end
end
