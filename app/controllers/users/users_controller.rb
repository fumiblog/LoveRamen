class Users::UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
    @genres = Genre.all
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    UserMailer.published_email(@user).deliver
    redirect_to users_user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(genre_id: @user.genre_id)
    # byebug
  end

  private

  def user_params
    params.require(:user).permit(:email, :name, :genre_id)
  end
end
