class Users::PostsController < ApplicationController
    def new
        @post = Post.new
        @ramenshops = Ramenshop.all #(半径10km圏内)
        @genres = Genre.all
    end

    def create
        @post = Post.new(post_params)
        # binding.pry
        @post.user_id = current_user.id
        @post.save
        redirect_to users_posts_path(ramenshop_id: @post.ramenshop_id)
    end

    def index
        if params[:ramenshop_id] == nil
            @posts = Post.all
        else
            @posts = Post.where(ramenshop_id: params[:ramenshop_id])
        end
        @stores = Post.joins(:ramenshop).group("ramenshops.name").order('count_all DESC').count
        # byebug
    end

    def destroy
        @post = Post.find(params[:id])
        @post.delete
        redirect_to users_posts_path
    end

    private
    def post_params
        params.require(:post).permit(
            :ramenshop_id,
            :user_id,
            :genre_id,
            :name,
            :submenu,
            :comment,
            :score,
            :image)
    end
end
