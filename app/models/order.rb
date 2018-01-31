class Order < ApplicationRecord
  has_and_belongs_to_many :users




  def pretty_time
    Time.at(self.date.to_i).strftime('%I:%M %p')
  end

  def order_update
    if order.order_status == nil
      order.update(order_status: "open")
    elsif order.order_status == "open"
      order.update(order_status: "driver")
    elsif order.order_status == "driver"
      order.update(order_status: "pickedup")
    elsif order.order_status == "pickup"
      order.update(order_status: "complete")
    end
  end


end
