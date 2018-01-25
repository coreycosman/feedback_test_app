FactoryBot.define do
  factory :corporation do
    name  "Corporation 1"
    email "corporation_1@gmail.com"
    address "123 fake st"
    photo "photo"
    driver_admin_id nil
    role "corporation"
  end

  factory :charity do
    name  "Charity 1"
    email "charity_1@gmail.com"
    address "123 fake st"
    photo "photo"
    driver_admin_id nil
    role "charity"
  end

  factory :collection_admin do
    name  "Collection Admin 1"
    email "collection_admin_1@gmail.com"
    address nil
    photo "photo"
    driver_admin_id nil
    role "collection admin"
  end

  factory :driver do
    name  "Driver 1"
    email "driver_1@gmail.com"
    address nil
    photo "photo"
    driver_admin_id nil
    role "driver"
  end

end
