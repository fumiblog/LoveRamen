class Admins::RamenshopsController < ApplicationController
  def index
    @ramenshop = Ramenshop.new
    @ramenshops = Ramenshop.all
  end

  def create
    @ramenshop = Ramenshop.new(ramenshop_params)
    @ramenshop.save
    redirect_to admins_ramenshops_path
  end

  def edit
    # byebug
    @ramenshop = Ramenshop.find(params[:id])
  end

  def update
    @ramenshop = Ramenshop.find(params[:id])
    @ramenshop.update(ramenshop_params)
    redirect_to admins_ramenshops_path
  end

  def destroy
    @ramenshop = Ramenshop.find(params[:id])
    @ramenshop.destroy
    redirect_to admins_ramenshops_path
  end

  private

  def ramenshop_params
    params.require(:ramenshop).permit(:name, :image)
  end
end
