class ReviewsController < ApplicationController

  def create
    @review = Review.new(review_params)
    if @review.valid?
       @review.save
       redirect_to recipe_path(@review.recipe)
    else
      flash[:errors] = ["Your review must be less than 15 characters :)"]
      redirect_to recipe_path(@review.recipe)
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to recipe_path(@review.recipe)
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :recipe_id, :content)
  end

end
