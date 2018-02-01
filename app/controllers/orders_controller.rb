class OrdersController < ApplicationController

  def create
    @order = Order.new(order_params)
    @order.order_status = "open"
    @user = User.find_by(params[:id])

    if @order.save
      @user.orders << @order
      flash.notice = "Order submitted"
      redirect_to user_path(@user.id)
    else
      render "users/show"
    end

  end

  def update
    @order = Order.find_by(params[:id])
  end


  private

    def order_params
      params.require(:order).permit %i(date pickup_start pickup_end food_description dropoff_latest driver_pickup_time driver_dropoff_time)
    end



end
