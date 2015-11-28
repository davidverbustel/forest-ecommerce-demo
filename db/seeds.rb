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
    time_zone: Faker::Address.time_zone,
  })
end

50.times do
  product = Product.create({
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph,
    currency: "eur",
    price: Faker::Commerce.price,
    category: Faker::Commerce.department(1),
  })
end
