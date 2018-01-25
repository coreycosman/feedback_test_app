class UserOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :user_orders do |t|
      t.references :user_id
      t.references :order_id
    end
  end
end
