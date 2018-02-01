class OrdersController < ApplicationController

  def create

    if current_user.role == "corporation"
      @order = Order.new(order_params)
      @order.order_status = "open"
      find_user
      corporation_order_submit?


    elsif current_user.role == "driver"
      @order.order_status == "driver"
      find_user
      driver_order_submit?
    end


  end

  def update
    @order = Order.find_by(params[:id])
  end


  private

    def order_params
      params.require(:order).permit %i(date pickup_start pickup_end food_description dropoff_latest driver_pickup_time driver_dropoff_time)
    end

    def corporation_order_submit?
      @order = Order.new(order_params)
      if @order.save
        current_user.orders << @order
        flash.notice = "Order submitted"
        redirect_to user_path(@user.id)
      else
        render "users/show"
      end
    end

    def driver_order_submit?
      @order = Order.new(order_params)
      if @order.save
        current_user.orders << @order
        flash.notice = "Order claimed"
        redirect_to user_path(@user.id)
      else
        render "users/show"
      end
    end

    def find_user
      @user = User.find_by(params[:id])
    end


end
