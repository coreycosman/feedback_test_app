class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.date :date
      t.integer :pickup_start
      t.integer :pickup_end
      t.string :food_description
      t.boolean :request_pending
      t.integer :dropoff_latest
      t.integer :driver_pickup_time
      t.integer :driver_dropoff_time

      t.timestamps
    end
  end
end
