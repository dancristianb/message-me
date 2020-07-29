class SessionsController < ApplicationController
  before_action :logged_in_redirect, only: [:new, :create]

  def create
    user = User.find_by(username: params[:session][:username])
    if user.present? && user.authenticate(params[:session][:password])
      flash[:success] = "Welcome #{user[:username]}!"
      session[:user_id] = user.id
      redirect_to root_path
    else
      flash.now[:error] = "There's something wrong with your credentials!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out!"
    redirect_to login_path
  end

  private

  def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in!"
      redirect_to root_path
    end
  end
end
