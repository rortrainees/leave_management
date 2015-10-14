class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :configure_account_update_params, if: :devise_controller?

    after_filter :employe_activity


protected
    def after_sign_in_path_for(resource)
      if resource.is_a?(Employe)
        employes_dashboard_path
      else
        hars_dashboard_path      
      end
    end

    def after_sign_out_path_for(resource_or_scope)
        root_path
    end

    def employe_activity
      current_employe.try :touch
    end

private
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up){|u| u.permit(:name, :e_id , :email, :password, :password_confirmation)}
    end

    def configure_account_update_params
      devise_parameter_sanitizer.for(:account_update){|u| u.permit(:name, :e_id , :email, :password, :password_confirmation, :current_password
)}
    end
end
