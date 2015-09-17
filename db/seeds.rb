# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed admins
User.create(email: 'thomasgluce@gmail.com', password: 'password', type_of_user: 'admin')

# Seed students
user_1 = User.create(email: 'dlec2@hotmail.co.uk', password: 'password', type_of_user: 'student')
StudentProfile.create(user_id: user_1.id, first_name: 'Dan', last_name: "Le Cornu")

# Seed businesses
