# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
	Friend.create(avatar_file_name: "4_14887_1457100399.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 560207,  name: "Beautiful Art", medium: "Medium", description: "Created this piece using painting techniques!", lat: 37.7846645, lng: -122.39754919999999)
end
