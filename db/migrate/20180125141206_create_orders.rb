class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date    :date
      t.time    :pickup_start
      t.time    :pickup_end
      t.string  :food_description
      t.boolean :request_pending
      t.time    :dropoff_latest
      t.time    :driver_pickup_time
      t.time    :driver_dropoff_time

      t.timestamps
    end
  end
end
