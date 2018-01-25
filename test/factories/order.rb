FactoryBot.define do
    factory :order do
      date         2018-01-25
      pickup_start 12:00:00
      pickup_end   14:00:00
      food_description "this is food"
      request_pending false
      dropoff_latest 16:00:00
      driver_pickup_time 15:00:00
      driver_dropoff_time 15:30:00
    end
end
