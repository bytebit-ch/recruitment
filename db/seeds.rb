# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed admins
user_1 = User.create(email: 'thomasgluce@gmail.com', password: 'password', type_of_user: 'admin', sign_in_count: 1)

# Seed students
user_2 = User.create(email: 'dlec2@hotmail.co.uk', password: 'password', type_of_user: 'student', sign_in_count: 1)

# Seed businesses
user_3 = User.create(email: 'test@business.com', password: 'password', type_of_user: 'business', sign_in_count: 1)