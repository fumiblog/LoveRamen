class Users::RamenshopsController < ApplicationController
  def index
    @posts = Post.group(:ramenshop_id).count
    @ramenshops = Ramenshop.all
  end
  
  def show
    @ramenshop = Ramenshop.find(params[:id])
    @posts = Post.where(ramenshop_id: @ramenshop.id).order(updated_at: :desc)
  end
end
