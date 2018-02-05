class OrdersController < ApplicationController



  def create

   if current_user.role == "corporation"
      @order = Order.new(order_params)
      @order.order_status = "open"
      find_user
      corporation_order_submit?
    end
  end

  def update
    if current_user.role == "charity"
      @order = Order.find(params[:id])
      @order.order_status = "charity"
      find_user
      charity_order_submit?
    end
  end


  private

    def order_params
      params.require(:order).permit %i(date pickup_start pickup_end food_description)
    end

    def claim_params
      params.require(:order).permit %i(dropoff_latest)
    end

    def corporation_order_submit?
      if @order.save
        current_user.orders << @order
        flash.notice = "Order submitted"
        redirect_to user_path(@user.id)
      else
        render "users/show"
      end
    end

    def charity_order_submit?
      if @order.update(claim_params.merge(order_status: "charity"))
        current_user.orders << @order
        flash.notice = "Order claimed"
        redirect_to user_path(@user.id)
      else
        render "users/show"
      end
    end

    def find_user
      @user = User.find(params[:user_id])
    end


end
