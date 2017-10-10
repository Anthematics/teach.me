# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

language = "Ruby"

user = User.create!(
  name: "Sean",
  password: "password",
  password_confirmation: "password",
  email: "sean@email.com"
)

chapter = Chapter.create!(
  name: "Variables",
  description: "The basic building blocks"
)

step = Step.create!(
  name: "Create new variables"
  description: "Try create some new variables yourself"
  chapter: chapter
)
