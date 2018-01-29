class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to users_path, notice: "You are Logged in"
    else
      flash.now[:error] = "Please Log in"
      render new_sessions_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "You are Logged Out"
  end
end
