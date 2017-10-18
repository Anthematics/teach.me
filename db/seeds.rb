# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

ruby = Language.create!(
  name: "Ruby",
  description: "Ruby is a dynamic, reflective, object-oriented, general-purpose programming language"
)

user = User.create!(
  name: "Sean",
  password: "password",
  password_confirmation: "password",
  email: "sean@email.com"
)

chapter1 = Chapter.create!(
  name: "Module1: Variables",
  description: "The basic building blocks",
  language_id: ruby.id
)

chapter2 = Chapter.create!(
  name: "Module2: Methods",
  description: "The basic building blocks",
  language_id: ruby.id
)
chapter3 = Chapter.create!(
  name: "Module3: Arrays & Hashes",
  description: "The basic building blocks",
  language_id: ruby.id
)
chapter4 = Chapter.create!(
  name: "Module4: Loops & Iterations",
  description: "The basic building blocks",
  language_id: ruby.id
)

chapter5 = Chapter.create!(
  name: "Module5: Object Oriented Programming",
  description: "The basic building blocks",
  language_id: ruby.id
)

chapter6 = Chapter.create!(
  name: "Module6: Instance, Class & Inheritance",
  description: "The basic building blocks",
  language_id: ruby.id
)

step1 = Step.create!(
  name: "Create new variables",
  description: "Try create some new variables yourself",
  chapter: chapter1
)
step2 = Step.create!(
  name: "Control Structures",
  description: "manage a program's control flow, allowing you to either execute or skip a block of code based on a condition that evaluates to true or false",
  chapter: chapter1
)
