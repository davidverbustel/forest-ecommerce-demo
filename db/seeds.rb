50.times do
  customer = Customer.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    city: Faker::Address.city,
    street_address: Faker::Address.street_name,
    building_number: Faker::Address.building_number,
    country: Faker::Address.country,
    country_code: Faker::Address.country_code,
    postal_code: Faker::Address.postcode,
    birthday: Faker::Date.between(18000.days.ago, 6480.days.ago),
    phone_number: Faker::PhoneNumber.phone_number,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude,
    time_zone: Faker::Address.time_zone
  })
end

50.times do
  product = Product.create({
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    currency: "eur",
    price: Faker::Commerce.price,
    category: Faker::Commerce.department(1)
  })
end

STATUS = ["valid", "in process", "closed"]
SHIPPING = ["UPS", "Fedex", "DHL"]

100.times do
  customer_order = CustomerOrder.create({
    customer_id: rand(1..50),
    order_placed_datetime: Faker::Time.between(DateTime.now - 20, DateTime.now),
    order_delivered_datetime: Faker::Time.between(DateTime.now + 5, DateTime.now + 20),
    order_shipping_charges: Faker::Number.decimal(2),
    order_details: Faker::Lorem.paragraph,
    order_status_code: STATUS.sample,
    shipping_method: SHIPPING.sample
  })
end
