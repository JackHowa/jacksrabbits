require 'faker'

rabbits = 10.times.map do
	Rabbit.create!(
		name: Faker::LordOfTheRings.character,
		color: Faker::Color.color_name
		)
end

users = 7.times.map do
	User.create!(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: 'password'
		)
end

users.each do |user|
	user_rabbits = rabbits.sample(rand(2..5))
	user_rabbits.each do |rabbit|
		Walk.create!(location: Faker::LordOfTheRings.location, user_id: user.id, rabbit_id: rabbit.id)
	end
end
