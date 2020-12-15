class Admins::GenresController < ApplicationController
  def index
    @genre = Genre.new
    @genres = Genre.all
    @star = Post.joins(:genre).group("sum.score")
    # byebug
  end

  def create
    @genre = Genre.new(genre_params)
    @genre.save
    redirect_to admins_genres_path
  end

  def destroy
  end

  private

  def genre_params
    params.require(:genre).permit(:name)
  end
end
