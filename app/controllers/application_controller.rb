class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end
    
  def after_sign_in_path_for(resource)
    ideas_path
  end
  
  protected

  def login_required
    redirect_to new_user_session_path, notice: "You need to sign in " and return false unless current_user
  end

end
