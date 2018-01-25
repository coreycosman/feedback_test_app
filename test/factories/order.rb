FactoryBot.define do
    factory :order do
      id           1
      date         Date.today
      pickup_start Time.new.strftime("12:00")
      pickup_end   Time.new.strftime("14:00")
      food_description "this is food"
      request_pending false
      dropoff_latest Time.new.strftime("16:00")
      driver_pickup_time Time.new.strftime("15:00")
      driver_dropoff_time Time.new.strftime("15:30")
    end
end
