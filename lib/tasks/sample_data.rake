namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(firstname:              "Ladislav",
                 lastname:              "Gallay",
                 email:                 "ladislav.gallay@lentil.sk",
                 password:              "aaaaaa",
                 password_confirmation: "aaaaaa")
    99.times do |n|
      firstname = Faker::Name.first_name
      lastname  = Faker::Name.last_name
      email     = "example-#{n+1}@lentil.sk"
      password  = "password"
      User.create!(firstname:             firstname,
                   lastname:              lastname,
                   email:                 email,
                   password:              password,
                   password_confirmation: password)
    end
  end
end