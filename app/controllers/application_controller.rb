class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin_user!
    if current_user && current_user.admin?
      true
    else
      redirect_to new_user_session_path
    end
  end

end
