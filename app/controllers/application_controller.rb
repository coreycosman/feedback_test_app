class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please Log in"
      redirect_to new_session_path
    end
  end

  helper_method :ensure_logged_in


end
