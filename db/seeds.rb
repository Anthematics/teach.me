# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Language.destroy_all
Chapter.destroy_all
Step.destroy_all

ruby = Language.create!(
  name: "ruby",
  description: "Ruby is a dynamic, reflective, object-oriented, general-purpose programming language"
)

user = User.create!(
  name: "Sean",
  password: "Password1#",
  password_confirmation: "Password1#",
  email: "sean@email.com",
  admin: true
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
  name: "Data types",
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
  <b>Replace</b> plus, minus, multiply, .... by arithmetic operators + , -, .. <br>
  a = 10 plus 5 <br>
  b = 9  minus 3 <br>
  c = 2 multiply 4 <br>
  d = 14 divided_by 2 <br>
  e = 3 exponent 3 <br>
  f = 20 modulus 3 <br>

  As per Step 1 call your variables using puts, p and check out the difference in display when you use print.
  ",
  chapter: chapter1
)

step2.code_tests.create(input: "a",output: "15")
step2.code_tests.create(input: "b",output: "6")
step2.code_tests.create(input: "c",output: "8")
step2.code_tests.create(input: "d",output: "7")
step2.code_tests.create(input: "e",output: "27")
step2.code_tests.create(input: "f",output: "false")


step3 = Step.create!(
  name: "Method",
  description: "<b>What are Methods?</b><br>

A <em>method</em> is a named sequence of instructions.
Some programming languages refer to it as a <em>function</em>
It encapsulates logic for re-use:<ul>
<li>Basically, it allows us to write code once, and reuse it in multiple places</li>
<li>A building block toward Don't Repeat Yourself (DRY)</li>
<li>Improves maintainability of our code when there's only one point of failure</li></ul><br><b>code style guide </b><br>
<ul><li> no spaces between method name and parameter list</li><li>Do: <em>def method(something)</em></li><li>Don't: <em>def method (something) </em></li></ul><br>
<b> Let's do some method </b><br><b>type</b>  def double(number)<br>
 <b>type</b> number * 2 <br><b>type</b>  end<br> Now you can all the method and pass any number <br>
example: puts double(5) will display 10 <br>
",
  chapter: chapter2
)
step3.code_tests.create(input: "double(6)",output: "12")
step3.code_tests.create(input: "double(9)",output: "18")
step3.code_tests.create(input: "double(11)",output: "22")

step4 = Step.create!(
  name: "Method",
  description: "<b>What are Methods?</b><br>

A <em>method</em> is a named sequence of instructions.
Some programming languages refer to it as a <em>function</em>
<b> A simple method to add two numbers</b><br>
<b>type</b>  def add(x,y)<br>
 <b>type</b>  x + y <br><b>type</b>  end<br><br><br> Now you can all the method and pass any two numbers <br>
example: puts add(5,12) will display 17<br>
",
  chapter: chapter2
)

step4.code_tests.create(input: "add(6,2)",output: "8")
step4.code_tests.create(input: "add(4,2)",output: "6")
step4.code_tests.create(input: "add(1,1)",output: "2")


step5 = Step.create!(
  name: "Array and Hashes",
  description: "Ruby arrays are ordered, integer-indexed collections of any object. Each element in an array is associated with and referred to by an index.
  Array indexing starts at 0.Ruby arrays can hold objects such as String, Integer, Fixnum, Hash, Symbol, even other Array objects.<br><br>
  example:<br>
   fruits = ['apple', 'orange', 'banana'] <br>
   mixed = ['me',12, 'Hi I m string', true, [ 1, 2, 3 ]]<br>
   Now your turn:<br>
   build one array with 5 elements and assign the name as <b>my_array</b><br>
  ",
  chapter: chapter3
)
step5.code_tests.create(input: "my_array.class", output: "Array")
step5.code_tests.create(input: "my_array.length", output: "5")

step6 = Step.create!(
  name: "Aray and Hashes",
  description: "A Hash is a collection of key-value pairs like this: \"employee\" = > \"salary\". It is similar to an Array, except that indexing is done via arbitrary keys of any object type, not an integer index.<br>
  If you attempt to access a hash with a key that does not exist, the method will return nil.<br>
  example:<br>
  customer1 = { \"firstname\" => \"Will\", \"lastname\" => \"Smith\", \"profession\" => \"Actor\"}<br>
  If I want the firstname of customer1, key is 'firstname', <br>
  customer1[\"first\"] will return Will <br>
  Now your turn: <br>
  create a hash and assign the name <b> my_hash</b><br>
  <b>type</b>  puts my_hash<br>
  <b>type</b>  puts my_hash[ ? ]<br>",
  chapter: chapter3
)
step6.code_tests.create(input: "my_hash.class", output: "Hash")

step7 = Step.create!(
  name: "Loop & Iterations",
  description: "Loops in Ruby are used to execute the same block of code a specified number of times.<br>
  The most commonly used iterations that you will come across will be .each<br>
  example:<br>
  shopping_list = ['chips','orange','egg','milk']<br>
  In order to all the list,type the following in the editor<br>
  shopping_list.each do |item| <br>
    puts item<br>
  end<br>",
  chapter: chapter4
)
step7.code_tests.create(input:"", output: "")

step7 = Step.create!(
  name: "",
  description: "",
  chapter: chapter5
)
step8 = Step.create!(
  name: "",
  description: "",
  chapter: chapter6
)
