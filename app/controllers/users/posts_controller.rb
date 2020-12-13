class Users::PostsController < ApplicationController
    def new
        @post = Post.new
        @ramenshops = Ramenshop.all #(半径10km圏内)
    end

    def create
        @post = Post.new(post_params)
        @post.user_id = current.user.id
    end




    private
    def post_params
        params.require(:post).permit(
            :user_id,
            :ramenshop_id,
            :genre_id,
            :name,
            :comment,
            :scorem,
            :image)
    end
end
