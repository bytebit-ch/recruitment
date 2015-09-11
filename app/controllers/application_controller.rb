class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  check_authorization :unless => :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?


#this is taking care of routing after sign
def after_sign_in_path_for(resource)
  if current_user and current_user.type_of_user == "student"
    business_profiles_path
  elsif current_user and current_user.type_of_user == 'business'
    student_profiles_path
  elsif current_user and current_user.type_of_user == "admin"
    admin_path 
  else
    landing_path
  end
 
end

def after_sign_out_path_for(resource_or_scope)
  landing_path
end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| 
            u.permit(:email, :password, :password_confirmation, :type_of_user) 
    }
  end

end
