Volunteer.find_or_create_by!(:first_name => Faker::Name.first_name,
  :last_name => Faker::Name.last_name) do ||
  :email => Faker::Internet.email,
  :mobile => Faker::PhoneNumber.cell_phone,
  :skype => Faker::Internet.user_name,
  :role => "counsellor",
  :relevant_experience => Faker::Lorem.paragraph,
  :work_remote => "yes",
  :travel_expenses => "yes")
end