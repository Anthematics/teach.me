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
  mode = ruby.chapters.create(name: "Module #{(i+1).to_s}", description: "Yolo")
  5.times do |i|
    mode.steps.create(name: "Steps #{(i+1).to_s}", description: "Please solve this step.. yolo")
  end
end

chapter1 = Chapter.create!(
  name: "Module1: Variables",
  description: " What is a variable? What's the use of a variable? Why are they important? In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)

chapter2 = Chapter.create!(
  name: "Module2: Methods",
  description: "What is a variable? What's the use of a variable? Why are they important? In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)
chapter3 = Chapter.create!(
  name: "Module3: Arrays & Hashes",
  description: "What is a variable? What's the use of a variable? Why are they important?In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
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
  name: "Step 1: Numbers",
  description: "There are multiple datatypes  are two types of numbers as data types 1) Integers (Whole Numbers)  and 2) Floats (or floating points aka numbers with decimals). In the datatypes chapter we will be executing some basic mathematical operations.",
  chapter: chapter1
)
step2 = Step.create!(
  name: "Control Structures",
  description: "manage a program's control flow, allowing you to either execute or skip a block of code based on a condition that evaluates to true or false",
  chapter: chapter1
)
