class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user.id), notice: "you have successfuly registered"
    else
      render 'new'
    end
  end

  def show
    ensure_logged_in
    @user = current_user
  end








  private

    def user_params
      params.require(:user).permit(:name, :email, :address, :photo, :driver_admin_id_id, :role, :password, :password_confirmation)
    end
end
