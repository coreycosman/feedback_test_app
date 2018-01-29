class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date    :date
      t.datetime    :pickup_start
      t.datetime    :pickup_end
      t.string  :food_description
      t.boolean :request_pending
      t.datetime    :dropoff_latest
      t.datetime    :driver_pickup_time
      t.datetime    :driver_dropoff_time

      t.timestamps
    end
  end
end
