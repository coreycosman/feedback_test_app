class UserOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :user_orders do |t|
      t.references :user
      t.references :order
    end
  end
end
