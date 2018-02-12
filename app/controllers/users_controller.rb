class UsersController < ApplicationController

  skip_before_action :authorized, only: [:new, :create]
  #before_action :logged_in?

  def new
    @user = User.new
  end

  def create
   @user = User.new(user_params)
   if @user.valid?
     @user.save
     session[:user_id] = @user.id
     # redirect_to user_path(@user)
     redirect_to users_path
   else
     flash[:errors] = @user.errors.full_messages
     redirect_to new_user_path
   end
  end

  def index

  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
