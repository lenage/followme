# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {name: "Alice", email: "me_alice@lenage.com"},
  {name: "Bob", email: "me_bob@lenage.com"},
  {name: "Colin", email: "me_colin@lenage.com"},
  {name: "David", email: "me_david@lenage.com"}
]

users.each do |x|
  User.create!(x.merge(password: "9ljk484B", password_confirmation: "9ljk484B"))
end
