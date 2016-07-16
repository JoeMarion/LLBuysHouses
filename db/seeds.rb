User.destroy_all
House.destroy_all


User.create!(admin: true, email: "admin@example.com", password: 'password', password_confirmation: 'password')

50.times do |n|
  House.create!(address: "#{Faker::Address.street_address}, 
                          #{Faker::Address.city}, #{Faker::Address.state_abbr}
                          #{Faker::Address.zip}",
                name: Faker::Name.name, phone_number: Faker::PhoneNumber.cell_phone,
                email: Faker::Internet.email)
end
