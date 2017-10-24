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



chapter1 = Chapter.create!(
  name: "Variables",
  description: "What is a variable? What's the use of a variable? Why are they important? In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)

chapter2 = Chapter.create!(
  name: "Methods",
  description: "What is a variable? What's the use of a variable? Why are they important? In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)
chapter3 = Chapter.create!(
  name: "Arrays & Hashes",
  description: "What is a variable? What's the use of a variable? Why are they important?In this lesson, you will learn about different types of variables in Ruby. At the end of the module, practice with our fun exercises to test your knowledge, and you will be a Ruby master in no time!",
  language_id: ruby.id
)
chapter4 = Chapter.create!(
  name: "Loops & Iterations",
  description: "The basic building blocks",
  language_id: ruby.id
)

chapter5 = Chapter.create!(
  name: "Object Oriented Programming",
  description: "The basic building blocks",
  language_id: ruby.id
)

chapter6 = Chapter.create!(
  name: "Instance, Class & Inheritance",
  description: "The basic building blocks",
  language_id: ruby.id
)

step1 = Step.create!(
  name: "Step 1: Data types",
  description: "Some of the basic Data Types of Ruby are Numbers,String,Boolean,and Symbols. <br><b> Numbers</b> without decimal points (eg. <b>1, 250, 99999</b>) are called <b>integers</b>, and numbers with decimal points (eg. <b>1.5, 150.3985, 50.0</b>) are usually called <b>floating-point numbers </b>or, more simply, <b>floats</b>.<br>In order to print the output, we will use <b>puts</b> before the statement.<br><br> <em>puts 3 </em>, will display integer 3 in the console.<br>Here is your first exercise: <ul><li>1.Display an integer of your choice</li><li>2. Display an floats</li></ul>",
  chapter: chapter1
)
step1.code_tests.create(input: "add(2,5)",output: "7")
step1.code_tests.create(input: "add(5,5)",output: "10")
step1.code_tests.create(input: "add(12,5)",output: "17")

step2 = Step.create!(
  name: "Control Structures",
  description: "manage a program's control flow, allowing you to either execute or skip a block of code based on a condition that evaluates to true or false",
  chapter: chapter1
)
