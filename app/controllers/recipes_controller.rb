class RecipesController < ApplicationController

  def index
    if params[:category]
      @recipes = Recipe.where(category: params[:category]).order("created_at DESC")
    else
      @recipes = Recipe.all.order("created_at DESC")
    end
  end


  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @categories = Category.all
  end

  def create
    @recipe = Recipe.new(recipe_params)
     if @recipe.valid?
      @ingredient = Ingredient.create(ingredient_params)
      Ingredientrecipe.create(recipe_id: @recipe.id, ingredient_id: @ingredient.id)
      @recipe.save
      redirect_to recipe_path(@recipe)
    else
      flash[:errors]= ["Form must contain title, description, photo, directions and ingredients :)"]
      redirect_to new_recipe_path
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :recipe_photo, :user_id, :directions, :category_id)
  end

  def ingredient_params
    params.require(:ingredients).permit(:name)
  end

end
