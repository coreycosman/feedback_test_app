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
      flash.now[:alert] = @user.error.full_messages
      render 'new'
    end
  end

  def show
    @order = Order.new
    @user = current_user
    ensure_logged_in
    check_role

  end








  private

    def user_params
      params.require(:user).permit %i(name email address photo driver_admin_id role password password_confirmation)
    end

    # def find_user
    #   @user = User.find_by(params[:id])
    # end

    def check_role

      if current_user && @current_user.role == "corporation"
        @orders = @current_user.orders

      elsif current_user && @current_user.role == "charity"
        @orders = Order.all.where(order_status: "open")
      end
    end

end
