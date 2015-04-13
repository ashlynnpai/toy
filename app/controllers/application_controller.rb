class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  private

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  
  def require_user
    redirect_to login_path unless current_user
   end
  
  def logged_in?
    !!current_user
  end  
  
  helper_method :current_user, :logged_in?, :require_use
end

