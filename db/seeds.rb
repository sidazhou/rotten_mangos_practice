# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
for i in (1..10)
Movie.create(title: "title#{i}", director: "director#{i}", 
  runtime_in_minutes: i, 
  description: "#{i}+#{i}+#{i}+#{i}+#{i}", 
  poster_image_url: "http://#{i}.com" , 
  release_date: Time.now.to_s(:db)
)
end

User.create(email: "q@q", password: "q", firstname: "q", lastname: "q", admin: true)
User.create(email: "w@w", password: "w", firstname: "w", lastname: "w")


