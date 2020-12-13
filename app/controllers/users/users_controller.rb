class Users::UsersController < ApplicationController
  
  def edit
    @user = User.find(params[:id])
    @genres = Genre.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to users_user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    # byebug
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :genre_id)
  end
end
