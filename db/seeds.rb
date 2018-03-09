require 'faker'

@user = User.create!(
  email: "rick@rick.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  roles: "admin"
  )

puts "1 Rick created"

User.create!(
  email: "morty@rick.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf"
  )

puts "1 Morty created"

20.times do |blog|
  Blog.create!(
    title: "Entry #{blog}",
    subtitle: Faker::RickAndMorty.location,
    body: Faker::RickAndMorty.quote 
  )
end 

puts "20 blogs created"

