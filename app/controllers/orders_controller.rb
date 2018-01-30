class OrdersController < ApplicationController

  def create
    @order = Order.new
    @order.pickup_start = params[:order][:pickup_start]
    @user = User.find(params[:id])

    if @order.save
      flash.notice = "Order submitted"
      redirect_to user_path
    else
      render "users/show"
    end

  end


  private

    # def order_params
    #   params.require(:order).permit %i(date pickup_start pickup_end food_description dropoff_latest driver_pickup_time driver_dropoff_time)
    # end

end
