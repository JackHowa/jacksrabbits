require 'faker'

10.times do 
	Rabbit.create(
		name: Faker::Name.name,
		color: Faker::Color.color_name
		)
end 