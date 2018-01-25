class UserOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders_users do |t|
      t.references :user
      t.references :order
    end
  end
end
