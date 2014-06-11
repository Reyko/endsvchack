Given(/^a Volunteer exists$/) do 
  @volunteer = Volunteer.create!(:first_name => Faker::Name.first_name,
    :last_name => Faker::Name.last_name,
    :email => Faker::Internet.email,
    :mobile => Faker::PhoneNumber.cell_phone,
    :skype => Faker::Internet.user_name,
    :role => "counsellor",
    #:skills => "communication", 
    :relevant_experience => Faker::Lorem.paragraph,
    #:base_location => "london",
    :work_remote => "yes",
    :travel_expenses => "yes")
end

Given(/^the user is on the edit profile page$/) do
  visit edit_user_path
end

When(/^the user updates their basic info$/) do
  @first_name = Faker::Name.first_name
  @last_name = Faker::Name.last_name
  @email = Faker::Internet.email
  @skype = Faker::Internet.user_name
  @experience = Faker::Lorem.paragraph
  @mobile = Faker::PhoneNumber.cell_phone  
  fill_in("First name", :with => @first_name)
  fill_in("Last name", :with => @last_name)
  fill_in("Email", :with => @email)
  fill_in("Mobile", :with => @mobile)
  fill_in("Skype", :with => @skype)
  fill_in("Role", :with => "translator")
  #fill_in("Skills", :with => "programming")
  fill_in("Relevant experience", :with => @experience)
  #fill_in("Base location", :with => "Spain")
  fill_in("Work remote?", :with => "yes")
  fill_in("Can you cover your travel expenses?", :with => "yes")
end

When(/^the user submits the form$/) do
  click_on "Update"
end

Then(/^his profile should be updated$/) do
  @volunteer.reload 
  expect(@volunteer.first_name).to eq(@first_name) 
  expect(@volunteer.last_name).to eq(@last_name) 
  expect(@volunteer.email).to eq(@email) 
  expect(@volunteer.mobile).to eq(@mobile) 
  expect(@volunteer.skype).to eq(@skype) 
  expect(@volunteer.role).to eq("translator") 
  expect(@volunteer.skills).to eq("programming") 
  expect(@volunteer.relevant_experience).to eq(@experience) 
  expect(@volunteer.base_location).to eq("Spain") 
  expect(@volunteer.work_remote).to eq("yes") 
  expect(@volunteer.travel_expenses).to eq("yes") 
end