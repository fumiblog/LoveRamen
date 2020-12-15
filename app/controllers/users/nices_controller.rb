class Users::NicesController < ApplicationController
    def create
        @nice = current_user.nices.create(ramenshop_id: params[:ramenshop_id])
        redirect_back(fallback_location: root_path)
    end

    def destroy
        @ramenshop = Ramenshop.find(params[:ramenshop_id])
        @nice = current_user.nices.find_by(ramenshop_id: @ramenshop.id)
        @nice.destroy
        redirect_back(fallback_location: root_path)
    end

end
