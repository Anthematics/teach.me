# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

ruby = Language.create!(
  name: "ruby",
  description: "Ruby is a dynamic, reflective, object-oriented, general-purpose programming language"
)

user = User.create!(
  name: "Sean",
  password: "password",
  password_confirmation: "password",
  email: "sean@email.com"
)

5.times do |i|
  mode = ruby.chapters.create(name: "Module #{i.to_s}", description: "Yolo")
  5.times do |i|
    mode.steps.create(name: "Steps #{i.to_s}", description: "Please solve this step.. yolo")
  end
end
