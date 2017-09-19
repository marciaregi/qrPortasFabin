class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
 # before_action :configure_strong_params, if: :devise_controller?
  before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    if current_user.has_role? :admin
      admin_home_path
    elsif current_user.has_role? :user
      user_home_path
    else
      unauthenticated_root_path
    end
  end

  # def configure_strong_params
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation,:doors_attributes => [:schedule, :description, :number])}
  # end  
end
