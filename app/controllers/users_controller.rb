class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path, notice: "you have successfuly registered!"
    else
      render 'new'
    end
  end


  def new
    @user = User.new
  end






  private

    def user_params
      params.require(:user).permit(:name, :email, :address, :photo, :driver_admin_id_id, :role, :password, :password_confirmation)
    end
end
