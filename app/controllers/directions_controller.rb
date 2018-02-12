class DirectionsController < ApplicationController

  def new
    @direction = Direction.new
    @recipe = Recipe.find(params[:id])
  end


end
