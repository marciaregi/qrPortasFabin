class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.has_role? :admin
      admin_home_path
    elsif current_user.has_role? 
      user_home_path
    else
      unauthenticated_root_path
    end
  end
end
