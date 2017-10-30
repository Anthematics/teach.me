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
  description: "Some of the basic <b>DataTypes</b> of Ruby are <b>Numbers</b>, <b>String</b> ('Welcome to learning Ruby!'), and
  <b>Boolean</b>(true or false).<br> <b>Numbers</b> without decimal points (eg. <b>1, 250, 99999</b>) are called <b>integers</b>,
  and numbers with decimal points (eg. <b>1.5, 150.3985, 50.0</b>) are usually called <b>floating-point numbers
  </b>or, more simply, <b>floats</b>.<br>In order to print the output, we will use <b>puts</b> before the statement.
  <br><br>It is important to remember that Ruby is case sensitive
    (it cares about capitalization)<br>Here is your first exercise: <ul><li>Set a variable using an integer,a float and a string.
    </li><li> Use following variables to set your DataTypes: my_int = 2, my_float = ?, my_string = ?, my_boolean = ?.
    <br>After assigning your variables, call your variables using puts or p before the variable name. Remember to Test your Code before Submiting!</li></ul>",
  chapter: chapter1
)

step1.code_tests.create(input: "my_int.class", output: "Fixnum")
step1.code_tests.create(input: "my_float.class", output: "Float")
step1.code_tests.create(input: "my_string.class", output: "String")



step2 = Step.create!(
  name: "Math",
  description: "Ruby is not limited to simple variable assignments. It also can do Math! <br>
  We are going to focus on six arithmetic operators: <br>
  Addition (+) <br>
  Subtraction (-) <br>
  Multiplication (*) <br>
  Division (/) <br>
  Exponentiation (**) ex: 2**3 = 8<br>
  Modulo (%) returns true if the numerator is exactly divisible by denominator else returns false. <br>
  ex:12%3 = true <br>
  ex: 12%5 = false <br>
  Try some math practice in the editor.

  Using the following variables:
  a = ? + ? <br>
  b = ? - ? <br>
  c = ? * ? <br>
  d = ? / ? <br>
  e = ? ** ? <br>
  f = ? % ? <br>

  As per Step 1 call your variables using puts, p and check out the difference in display when you use print.
  ",
  chapter: chapter1
)

step2.code_tests.create(input: "",output: "")
