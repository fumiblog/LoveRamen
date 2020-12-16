class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?


    def after_sign_in_path_for(resource)
        case resource
        when User
            edit_users_user_path(current_user)
        when Admin
            admins_ramenshops_path
        end
    end

    def after_sign_out_path_for(resource)
        # byebug
        case resource
        when :user
            root_path
        when :admin
             new_admin_session_path
        end
    end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [
          :name,
          :genre_id])
    end
end
