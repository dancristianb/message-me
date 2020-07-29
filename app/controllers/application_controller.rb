class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    User.find(session[:user_id]) if logged_in?
  end

  def require_user
    return if logged_in?

    flash[:error] = 'You need to be logged in to perform this action!'
    redirect_to login_path
  end
end
